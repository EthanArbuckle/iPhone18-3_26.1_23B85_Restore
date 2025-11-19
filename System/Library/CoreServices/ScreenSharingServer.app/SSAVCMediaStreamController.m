@interface SSAVCMediaStreamController
- (BOOL)createAVCVideoStreamWithIDSSession:(id)a3 supports60FPS:(BOOL)a4 audioToken:(int64_t)a5 answerNegotiator:(id)a6 videoEncryptionKeyViewerToServer:(id)a7 videoEncryptionKeyServerToViewer:(id)a8 AVCVideoStream:(id *)a9 AVCScreenCapture:(id *)a10 avcClientName:(id)a11 mediaStreamSessionUUID:(id)a12;
- (SSAVCMediaStreamController)initWithIDSSession:(id)a3 avcClientName:(id)a4 audioEncryptionKeyViewerToServer:(id)a5 audioEncryptionKeyServerToViewer:(id)a6 video1EncryptionKeyViewerToServer:(id)a7 video1EncryptionKeyServerToViewer:(id)a8 audioOffer:(id)a9 videoOffer:(id)a10 sessionID:(id)a11 supports60FPS:(BOOL)a12 mediaStreamSessionUUID:(id)a13 delegate:(id)a14;
- (SSAVCMediaStreamControllerDelegate)delegate;
- (id)audioAnswer;
- (id)createAVCAudioStreamWithIDSDestination:(id)a3 audioConfig:(id)a4 avcClientName:(id)a5 mediaStreamSessionUUID:(id)a6;
- (id)videoAnswer;
- (void)logUnexpectedVideoConfigInfo:(id)a3;
- (void)pause;
- (void)resume;
- (void)screenCapture:(id)a3 didStart:(BOOL)a4 withError:(id)a5;
- (void)screenCapture:(id)a3 didStop:(BOOL)a4 withError:(id)a5;
- (void)serverDidDisconnect:(id)a3;
- (void)start;
- (void)stop;
- (void)stream:(id)a3 didGetLastDecodedFrame:(id)a4;
- (void)stream:(id)a3 didReceiveDTMFEventWithDigit:(char)a4;
- (void)stream:(id)a3 didReceiveRTCPPackets:(id)a4;
- (void)stream:(id)a3 didStartSynchronizer:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 didUpdateVideoConfiguration:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 downlinkQualityDidChange:(id)a4;
- (void)stream:(id)a3 updateInputFrequencyLevel:(id)a4;
- (void)stream:(id)a3 updateOutputFrequencyLevel:(id)a4;
- (void)stream:(id)a3 uplinkQualityDidChange:(id)a4;
- (void)streamDidInterruptionBegin:(id)a3;
- (void)streamDidInterruptionEnd:(id)a3;
- (void)streamDidRTCPTimeOut:(id)a3;
- (void)streamDidRTPTimeOut:(id)a3;
- (void)streamDidServerDie:(id)a3;
- (void)streamDidStop:(id)a3;
@end

@implementation SSAVCMediaStreamController

- (SSAVCMediaStreamController)initWithIDSSession:(id)a3 avcClientName:(id)a4 audioEncryptionKeyViewerToServer:(id)a5 audioEncryptionKeyServerToViewer:(id)a6 video1EncryptionKeyViewerToServer:(id)a7 video1EncryptionKeyServerToViewer:(id)a8 audioOffer:(id)a9 videoOffer:(id)a10 sessionID:(id)a11 supports60FPS:(BOOL)a12 mediaStreamSessionUUID:(id)a13 delegate:(id)a14
{
  v104 = a3;
  v103 = a4;
  v20 = a5;
  v21 = a6;
  v108 = a7;
  v107 = a8;
  v22 = v20;
  v99 = a9;
  v23 = a13;
  v98 = a14;
  v24 = a10;
  v101 = v21;
  if (sub_1000423E0())
  {
    v25 = sub_100042E68();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v118 = 1024;
      v119 = 48;
      v120 = 2048;
      v121 = COERCE_DOUBLE([v20 length]);
      v122 = 2048;
      v123 = [v21 length];
      v124 = 2048;
      v125 = [v108 length];
      v126 = 2048;
      v127 = [v107 length];
      v128 = 2048;
      v129 = v23;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] audioKeyViewerToServer length %lu audioKeyServerToViewer length %lu video1KeyViewerToServer length %lu video1KeyServerToViewer %lu mediaStreamSessionUUID %p", buf, 0x44u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 48, "-[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "audioKeyViewerToServer length %lu audioKeyServerToViewer length %lu video1KeyViewerToServer length %lu video1KeyServerToViewer %lu mediaStreamSessionUUID %p", [v20 length], objc_msgSend(v21, "length"), objc_msgSend(v108, "length"), objc_msgSend(v107, "length"), v23);
  v26 = AVCMediaStreamNegotiatorTransportProtocolType;
  v114 = AVCMediaStreamNegotiatorTransportProtocolType;
  v115 = &off_10006B1C0;
  v100 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
  v27 = +[UIScreen mainScreen];
  [v27 scale];
  v29 = v28;

  if (sub_1000423E0())
  {
    v30 = sub_100042E68();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v118 = 1024;
      v119 = 56;
      v120 = 2048;
      v121 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%s:%d] actual display scale factor %f", buf, 0x1Cu);
    }
  }

  v102 = v23;
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 56, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "actual display scale factor %f", v29);
  v106 = [NSNumber numberWithDouble:1.0];
  v31 = +[UIScreen mainScreen];
  [v31 nativeBounds];
  v33 = v32;

  if (sub_1000423E0())
  {
    v34 = sub_100042E68();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v118 = 1024;
      v119 = 62;
      v120 = 1024;
      LODWORD(v121) = v33;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%s:%d] actual pointWidth %u", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 62, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "actual pointWidth %u", v33);
  v105 = [NSNumber numberWithUnsignedInt:v33 >> 1];
  v35 = +[UIScreen mainScreen];
  [v35 nativeBounds];
  v37 = v36;

  if (sub_1000423E0())
  {
    v38 = sub_100042E68();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v118 = 1024;
      v119 = 66;
      v120 = 1024;
      LODWORD(v121) = v37;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%s:%d] actual pointHeight %u", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 66, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "actual pointHeight %u", v37);
  v97 = [NSNumber numberWithUnsignedInt:v37 >> 1];
  v39 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v105, AVCMediaStreamNegotiatorVideoWidth, v97, AVCMediaStreamNegotiatorVideoHeight, v106, AVCMediaStreamNegotiatorVideoResolution, &off_10006B1C0, v26, 0];
  v40 = v99;
  if (sub_1000423E0())
  {
    v41 = sub_100042E68();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v39 description];
      v43 = [v42 UTF8String];
      *buf = 136315650;
      v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v118 = 1024;
      v119 = 76;
      v120 = 2080;
      v121 = *&v43;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] video options %s", buf, 0x1Cu);
    }
  }

  v44 = [v39 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 76, "-[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "video options %s", [v44 UTF8String]);

  v113 = 0;
  v45 = [[AVCMediaStreamNegotiator alloc] initWithOffer:v24 options:v39 error:&v113];

  v46 = v113;
  [(SSAVCMediaStreamController *)self setVideoAnswerNegotiator:v45];

  v47 = [(SSAVCMediaStreamController *)self videoAnswerNegotiator];

  if (!v47)
  {
    if (sub_1000423E0())
    {
      v66 = sub_100042E68();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = [v46 description];
        v68 = [v67 UTF8String];
        *buf = 136315650;
        v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v118 = 1024;
        v119 = 81;
        v120 = 2080;
        v121 = *&v68;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "[%s:%d] unable to create video1 answer negotiator: %s", buf, 0x1Cu);
      }
    }

    v69 = [v46 description];
    [v69 UTF8String];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 81, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 3, 0, "unable to create video1 answer negotiator: %s");
    goto LABEL_46;
  }

  v48 = [v99 length];
  v49 = sub_1000423E0();
  if (!v48)
  {
    if (v49)
    {
      v72 = sub_100042E68();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v118 = 1024;
        v119 = 123;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "[%s:%d] no audio offer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 123, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "no audio offer");
    v56 = 0;
    goto LABEL_53;
  }

  if (v49)
  {
    v50 = sub_100042E68();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [v99 length];
      *buf = 136315650;
      v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v118 = 1024;
      v119 = 87;
      v120 = 2048;
      v121 = *&v51;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio offer length %lu", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 87, "-[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "audio offer length %lu", [v99 length]);
  v112 = v46;
  v52 = [[AVCMediaStreamNegotiator alloc] initWithOffer:v99 options:v100 error:&v112];
  v53 = v112;

  [(SSAVCMediaStreamController *)self setAudioAnswerNegotiator:v52];
  v54 = [(SSAVCMediaStreamController *)self audioAnswerNegotiator];

  if (!v54)
  {
    if (sub_1000423E0())
    {
      v88 = sub_100042E68();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v89 = [v53 description];
        v90 = [v89 UTF8String];
        *buf = 136315650;
        v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v118 = 1024;
        v119 = 91;
        v120 = 2080;
        v121 = *&v90;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "[%s:%d] unable to create audio negotiator: %s", buf, 0x1Cu);
      }
    }

    v91 = [v53 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 91, "-[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 3, 0, "unable to create audio negotiator: %s", [v91 UTF8String]);

    v56 = 0;
    v70 = 0;
    v71 = 0;
    v46 = v53;
    goto LABEL_77;
  }

  v55 = [(SSAVCMediaStreamController *)self audioAnswerNegotiator];
  v111 = v53;
  v56 = [v55 generateMediaStreamConfigurationWithError:&v111];
  v46 = v111;

  if (!v56)
  {
    if (sub_1000423E0())
    {
      v94 = sub_100042E68();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v95 = [v46 description];
        v96 = [v95 UTF8String];
        *buf = 136315650;
        v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v118 = 1024;
        v119 = 98;
        v120 = 2080;
        v121 = *&v96;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "[%s:%d] unable to create audio config:  %s", buf, 0x1Cu);
      }
    }

    v69 = [v46 description];
    [v69 UTF8String];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 98, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 3, 0, "unable to create audio config:  %s");
LABEL_46:

    v56 = 0;
LABEL_47:
    v70 = 0;
    v71 = 0;
    goto LABEL_77;
  }

  [v56 setSRTPCipherSuite:5];
  [v56 setSRTCPCipherSuite:5];
  [v56 setSendMediaKey:v101];
  [v56 setReceiveMediaKey:v22];
  if ([v56 direction] != 1)
  {
    if (sub_1000423E0())
    {
      v57 = sub_100042E68();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = [v56 direction];
        *buf = 136315650;
        v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v118 = 1024;
        v119 = 109;
        v120 = 2048;
        v121 = *&v58;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio direction set to %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 109, "-[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 5, 0, "audio direction set to %ld", [v56 direction]);
  }

  v59 = [v104 destination];
  v60 = [(SSAVCMediaStreamController *)self createAVCAudioStreamWithIDSDestination:v59 audioConfig:v56 avcClientName:v103 mediaStreamSessionUUID:v102];
  [(SSAVCMediaStreamController *)self setAudioStream:v60];

  v61 = [(SSAVCMediaStreamController *)self audioStream];

  if (!v61)
  {
    goto LABEL_47;
  }

  v62 = [(SSAVCMediaStreamController *)self audioStream];
  [v62 setDelegate:self];

  if (sub_1000423E0())
  {
    v63 = sub_100042E68();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = [(SSAVCMediaStreamController *)self audioStream];
      *buf = 136315650;
      v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v118 = 1024;
      v119 = 120;
      v120 = 2048;
      v121 = *&v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%s:%d] AVCAudioStream %p", buf, 0x1Cu);
    }
  }

  v65 = [(SSAVCMediaStreamController *)self audioStream];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 120, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "AVCAudioStream %p", v65);

LABEL_53:
  v73 = v22;
  if (sub_1000423E0())
  {
    v74 = sub_100042E68();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v118 = 1024;
      v119 = 126;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[%s:%d] configure video stream", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 126, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "configure video stream");
  v75 = [(SSAVCMediaStreamController *)self audioStream];
  v76 = [v75 streamToken];
  v77 = [(SSAVCMediaStreamController *)self videoAnswerNegotiator];
  v109 = 0;
  v110 = 0;
  v78 = [(SSAVCMediaStreamController *)self createAVCVideoStreamWithIDSSession:v104 supports60FPS:a12 audioToken:v76 answerNegotiator:v77 videoEncryptionKeyViewerToServer:v108 videoEncryptionKeyServerToViewer:v107 AVCVideoStream:&v110 AVCScreenCapture:&v109 avcClientName:v103 mediaStreamSessionUUID:v102];
  v71 = v110;
  v70 = v109;

  if (v78)
  {
    [(SSAVCMediaStreamController *)self setVideoStream:v71];
    v79 = [(SSAVCMediaStreamController *)self videoStream];
    [v79 setDelegate:self];

    [(SSAVCMediaStreamController *)self setScreenCapture:v70];
    [(SSAVCMediaStreamController *)self setDelegate:v98];
    v22 = v73;
    if (sub_1000423E0())
    {
      v80 = sub_100042E68();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = [(SSAVCMediaStreamController *)self videoStream];
        v82 = [(SSAVCMediaStreamController *)self screenCapture];
        *buf = 136315906;
        v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v118 = 1024;
        v119 = 142;
        v120 = 2048;
        v121 = *&v81;
        v122 = 2048;
        v123 = v82;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "[%s:%d] VideoStream %p screencapture %p ", buf, 0x26u);

        v22 = v73;
      }
    }

    v83 = [(SSAVCMediaStreamController *)self videoStream];
    v84 = [(SSAVCMediaStreamController *)self screenCapture];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 142, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "VideoStream %p screencapture %p ", v83, v84);

    v40 = v99;
    if (sub_1000423E0())
    {
      v85 = sub_100042E68();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v118 = 1024;
        v119 = 149;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "[%s:%d] success", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 149, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "success");
    v86 = self;
    goto LABEL_82;
  }

  v22 = v73;
  v40 = v99;
  if (sub_1000423E0())
  {
    v87 = sub_100042E68();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v118 = 1024;
      v119 = 146;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "[%s:%d] unable to start screen capture", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 146, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 3, 0, "unable to start screen capture");
LABEL_77:
  if (sub_1000423E0())
  {
    v92 = sub_100042E68();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v117 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v118 = 1024;
      v119 = 153;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "[%s:%d] stream creation failed", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 153, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 3, 0, "stream creation failed");
  v86 = 0;
LABEL_82:

  return v86;
}

- (void)start
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(SSAVCMediaStreamController *)self videoStream];
      v5 = [(SSAVCMediaStreamController *)self audioStream];
      *buf = 136315906;
      v12 = "[SSAVCMediaStreamController start]";
      v13 = 1024;
      v14 = 159;
      v15 = 2048;
      v16 = v4;
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] start video sending using video stream %p audio stream %p", buf, 0x26u);
    }
  }

  v6 = [(SSAVCMediaStreamController *)self videoStream];
  v7 = [(SSAVCMediaStreamController *)self audioStream];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 159, "[SSAVCMediaStreamController start]", 7, 0, "start video sending using video stream %p audio stream %p", v6, v7);

  v8 = [(SSAVCMediaStreamController *)self screenCapture];
  [v8 startCapture];

  v9 = [(SSAVCMediaStreamController *)self videoStream];
  [v9 start];

  v10 = [(SSAVCMediaStreamController *)self audioStream];
  [v10 start];
}

- (void)stop
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(SSAVCMediaStreamController *)self videoStream];
      v5 = [(SSAVCMediaStreamController *)self audioStream];
      *buf = 136315906;
      v14 = "[SSAVCMediaStreamController stop]";
      v15 = 1024;
      v16 = 167;
      v17 = 2048;
      v18 = v4;
      v19 = 2048;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop video sending using video stream %p audio stream %p", buf, 0x26u);
    }
  }

  v6 = [(SSAVCMediaStreamController *)self videoStream];
  v7 = [(SSAVCMediaStreamController *)self audioStream];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 167, "[SSAVCMediaStreamController stop]", 7, 0, "stop video sending using video stream %p audio stream %p", v6, v7);

  v8 = [(SSAVCMediaStreamController *)self screenCapture];
  [v8 stopCapture];

  [(SSAVCMediaStreamController *)self setScreenCapture:0];
  v9 = [(SSAVCMediaStreamController *)self videoStream];
  [v9 stop];

  v10 = [(SSAVCMediaStreamController *)self videoStream];
  [v10 setDelegate:0];

  [(SSAVCMediaStreamController *)self setVideoStream:0];
  v11 = [(SSAVCMediaStreamController *)self audioStream];
  [v11 stop];

  v12 = [(SSAVCMediaStreamController *)self audioStream];
  [v12 setDelegate:0];

  [(SSAVCMediaStreamController *)self setAudioStream:0];
}

- (void)pause
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(SSAVCMediaStreamController *)self videoStream];
      v5 = [(SSAVCMediaStreamController *)self audioStream];
      *buf = 136315906;
      v11 = "[SSAVCMediaStreamController pause]";
      v12 = 1024;
      v13 = 180;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] pause video sending using video stream %p audio stream %p", buf, 0x26u);
    }
  }

  v6 = [(SSAVCMediaStreamController *)self videoStream];
  v7 = [(SSAVCMediaStreamController *)self audioStream];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 180, "[SSAVCMediaStreamController pause]", 7, 0, "pause video sending using video stream %p audio stream %p", v6, v7);

  v8 = [(SSAVCMediaStreamController *)self videoStream];
  [v8 pause];

  v9 = [(SSAVCMediaStreamController *)self audioStream];
  [v9 pause];
}

- (void)resume
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(SSAVCMediaStreamController *)self videoStream];
      v5 = [(SSAVCMediaStreamController *)self audioStream];
      *buf = 136315906;
      v11 = "[SSAVCMediaStreamController resume]";
      v12 = 1024;
      v13 = 187;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] resume video sending using video stream %p audio stream %p", buf, 0x26u);
    }
  }

  v6 = [(SSAVCMediaStreamController *)self videoStream];
  v7 = [(SSAVCMediaStreamController *)self audioStream];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 187, "[SSAVCMediaStreamController resume]", 7, 0, "resume video sending using video stream %p audio stream %p", v6, v7);

  v8 = [(SSAVCMediaStreamController *)self videoStream];
  [v8 resume];

  v9 = [(SSAVCMediaStreamController *)self audioStream];
  [v9 resume];
}

- (id)audioAnswer
{
  v2 = [(SSAVCMediaStreamController *)self audioAnswerNegotiator];
  v3 = [v2 answer];

  if (!v3)
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "[SSAVCMediaStreamController audioAnswer]";
        v8 = 1024;
        v9 = 197;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s:%d] unable to generate audio answer", &v6, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 197, "[SSAVCMediaStreamController audioAnswer]", 3, 0, "unable to generate audio answer");
  }

  return v3;
}

- (id)videoAnswer
{
  v2 = [(SSAVCMediaStreamController *)self videoAnswerNegotiator];
  v3 = [v2 answer];

  if (!v3)
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "[SSAVCMediaStreamController videoAnswer]";
        v8 = 1024;
        v9 = 205;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s:%d] unable to generate video answer", &v6, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 205, "[SSAVCMediaStreamController videoAnswer]", 3, 0, "unable to generate video answer");
  }

  return v3;
}

- (BOOL)createAVCVideoStreamWithIDSSession:(id)a3 supports60FPS:(BOOL)a4 audioToken:(int64_t)a5 answerNegotiator:(id)a6 videoEncryptionKeyViewerToServer:(id)a7 videoEncryptionKeyServerToViewer:(id)a8 AVCVideoStream:(id *)a9 AVCScreenCapture:(id *)a10 avcClientName:(id)a11 mediaStreamSessionUUID:(id)a12
{
  v68 = a4;
  v16 = a3;
  v73 = a6;
  v72 = a7;
  v71 = a8;
  v17 = a11;
  v70 = a12;
  *a9 = 0;
  *a10 = 0;
  if (sub_1000423E0())
  {
    v18 = sub_100042E68();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 destination];
      *buf = 136315650;
      v79 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
      v80 = 1024;
      v81 = 226;
      v82 = 2080;
      *v83 = [v19 UTF8String];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] createAVCVideoStreamWithIDSDestination %s", buf, 0x1Cu);
    }
  }

  v20 = v16;
  v21 = [v16 destination];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 226, "-[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 7, 0, "createAVCVideoStreamWithIDSDestination %s", [v21 UTF8String]);

  v77 = 0;
  v22 = [v73 generateMediaStreamConfigurationWithError:&v77];
  v23 = v77;
  if (v22)
  {
    v69 = v17;
    [v22 setSRTPCipherSuite:5];
    [v22 setSRTCPCipherSuite:5];
    [v22 setSendMediaKey:v71];
    [v22 setReceiveMediaKey:v72];
    v24 = objc_alloc_init(AVCScreenCaptureConfiguration);
    [v24 setShouldRunInProcess:0];
    [v24 setIsCursorCaptured:1];
    [v24 setIsWindowed:0];
    [v24 setScreenCaptureDisplayID:0];
    v25 = [[AVCScreenCapture alloc] initWithDelegate:self withConfig:v24];
    v26 = v25;
    if (!v25)
    {
      if (sub_1000423E0())
      {
        v47 = sub_100042E68();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v79 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
          v80 = 1024;
          v81 = 247;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "[%s:%d] unable to get AVCScreenCapture", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 247, "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "unable to get AVCScreenCapture");
      v43 = 0;
      goto LABEL_53;
    }

    v27 = v25;
    v66 = v26;
    *a10 = v26;
    v76 = v23;
    v28 = [v73 generateMediaStreamInitOptionsWithError:&v76];
    v29 = v76;

    if (!v28)
    {
      if (sub_1000423E0())
      {
        v48 = sub_100042E68();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = [v29 description];
          v50 = [v49 UTF8String];
          *buf = 136315906;
          v79 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
          v80 = 1024;
          v81 = 255;
          v82 = 2048;
          *v83 = 0;
          *&v83[8] = 2080;
          *&v83[10] = v50;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "[%s:%d] error from create media stream init options (%p):  %s", buf, 0x26u);
        }
      }

      v51 = [v29 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 255, "-[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "error from create media stream init options (%p):  %s", 0, [v51 UTF8String]);
      v43 = 0;
      goto LABEL_52;
    }

    v65 = v28;
    v30 = [v28 mutableCopy];
    [v30 setObject:v69 forKeyedSubscript:kAVCMediaStreamOptionClientName];
    [v30 setObject:v70 forKeyedSubscript:kAVCMediaStreamOptionClientSessionID];
    v31 = [AVCVideoStream alloc];
    v32 = [v16 destination];
    v75 = v29;
    v64 = v30;
    v33 = [v31 initWithIDSDestination:v32 options:v30 error:&v75];
    v34 = v75;

    v35 = v33;
    if (v33)
    {
      v36 = v33;
      *a9 = v33;
      v37 = [v22 video];
      [v37 setCaptureSource:1];
      [v37 setCaptureSourceID:{objc_msgSend(v66, "captureSourceID")}];
      [v37 setSynchronizationSourceStreamToken:a5];
      if (v68)
      {
        v38 = 60;
      }

      else
      {
        v38 = 30;
      }

      [v37 setFramerate:v38];
      v20 = v16;
      if (sub_1000423E0())
      {
        v39 = sub_100042E68();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v37 framerate];
          *buf = 136315906;
          v79 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
          v80 = 1024;
          v81 = 285;
          v82 = 1024;
          *v83 = v68;
          *&v83[4] = 2048;
          *&v83[6] = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%s:%d] encoder support 60FPS %d videoConfig.framerate %lu", buf, 0x22u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 285, "-[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 7, 0, "encoder support 60FPS %d videoConfig.framerate %lu", v68, [v37 framerate]);
      [(SSAVCMediaStreamController *)self logUnexpectedVideoConfigInfo:v22];
      if ([v37 isValidForDirection:1])
      {
        if ([v22 isValidVideoConfig])
        {
          v74 = v34;
          v41 = [v33 configure:v22 error:&v74];
          v42 = v74;

          if (v41)
          {
            v43 = 1;
          }

          else
          {
            if (sub_1000423E0())
            {
              v58 = sub_100042E68();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                v59 = [v42 description];
                v60 = [v59 UTF8String];
                *buf = 136315650;
                v79 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
                v80 = 1024;
                v81 = 303;
                v82 = 2080;
                *v83 = v60;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "[%s:%d] unable to configure stream:  %s", buf, 0x1Cu);
              }
            }

            v61 = [v42 description];
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 303, "-[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "unable to configure stream:  %s", [v61 UTF8String]);

            v43 = 0;
          }

          v34 = v42;
          v20 = v16;
          v51 = v64;
          goto LABEL_51;
        }

        v51 = v64;
        if (sub_1000423E0())
        {
          v56 = sub_100042E68();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v79 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
            v80 = 1024;
            v81 = 297;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "[%s:%d] negotiator video config invalid", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 297, "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "negotiator video config invalid", v62, v63);
      }

      else
      {
        v51 = v64;
        if (sub_1000423E0())
        {
          v55 = sub_100042E68();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v79 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
            v80 = 1024;
            v81 = 291;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "[%s:%d] video config not valid for direction", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 291, "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "video config not valid for direction", v62, v63);
      }
    }

    else
    {
      v20 = v16;
      v51 = v64;
      if (sub_1000423E0())
      {
        v52 = sub_100042E68();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = [v34 description];
          v54 = [v53 UTF8String];
          *buf = 136315906;
          v79 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
          v80 = 1024;
          v81 = 268;
          v82 = 2048;
          *v83 = 0;
          *&v83[8] = 2080;
          *&v83[10] = v54;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "[%s:%d] error from initWithIDSDestination (%p):  %s", buf, 0x26u);

          v20 = v16;
        }
      }

      v37 = [v34 description];
      [v37 UTF8String];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 268, "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "error from initWithIDSDestination (%p):  %s", 0);
    }

    v43 = 0;
LABEL_51:

    v29 = v34;
    v28 = v65;
LABEL_52:

    v23 = v29;
    v26 = v66;
LABEL_53:

    v17 = v69;
    goto LABEL_54;
  }

  if (sub_1000423E0())
  {
    v44 = sub_100042E68();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [v23 description];
      v46 = [v45 UTF8String];
      *buf = 136315906;
      v79 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
      v80 = 1024;
      v81 = 230;
      v82 = 2048;
      *v83 = 0;
      *&v83[8] = 2080;
      *&v83[10] = v46;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "[%s:%d] error from unable to create video config (%p):  %s", buf, 0x26u);
    }
  }

  v24 = [v23 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 230, "-[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "error from unable to create video config (%p):  %s", 0, [v24 UTF8String]);
  v43 = 0;
LABEL_54:

  return v43;
}

- (id)createAVCAudioStreamWithIDSDestination:(id)a3 audioConfig:(id)a4 avcClientName:(id)a5 mediaStreamSessionUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (sub_1000423E0())
  {
    v14 = sub_100042E68();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v60 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
      v61 = 1024;
      v62 = 319;
      v63 = 2080;
      v64 = [v10 UTF8String];
      v65 = 2080;
      v66 = [v12 UTF8String];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] createAVCAudioStreamWithIDSDestination %s avcClientName %s", buf, 0x26u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 319, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "createAVCAudioStreamWithIDSDestination %s avcClientName %s", [v10 UTF8String], objc_msgSend(v12, "UTF8String"));
  v15 = [(SSAVCMediaStreamController *)self audioAnswerNegotiator];
  v58 = 0;
  v16 = [v15 generateMediaStreamInitOptionsWithError:&v58];
  v17 = v58;

  v18 = sub_1000423E0();
  if (v16)
  {
    if (v18)
    {
      v19 = sub_100042E68();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v16 description];
        v21 = [v20 UTF8String];
        *buf = 136315650;
        v60 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
        v61 = 1024;
        v62 = 326;
        v63 = 2080;
        v64 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] audioCallIDDict %s", buf, 0x1Cu);
      }
    }

    v22 = [v16 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 326, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "audioCallIDDict %s", [v22 UTF8String]);

    v23 = [v16 objectForKeyedSubscript:kAVCMediaStreamOptionCallID];
    if (sub_1000423E0())
    {
      v24 = sub_100042E68();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v23 UTF8String];
        *buf = 136315906;
        v60 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
        v61 = 1024;
        v62 = 328;
        v63 = 2048;
        v64 = v23;
        v65 = 2080;
        v66 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] audioCallID %p %s", buf, 0x26u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 328, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "audioCallID %p %s", v23, [v23 UTF8String]);
    if (sub_1000423E0())
    {
      v26 = sub_100042E68();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        [v13 description];
        v28 = v27 = v12;
        v29 = [v28 UTF8String];
        *buf = 136315650;
        v60 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
        v61 = 1024;
        v62 = 329;
        v63 = 2080;
        v64 = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] mediaStreamSessionID %s", buf, 0x1Cu);

        v12 = v27;
      }
    }

    v30 = [v13 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 329, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "mediaStreamSessionID %s", [v30 UTF8String]);

    if (sub_1000423E0())
    {
      v31 = sub_100042E68();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v60 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
        v61 = 1024;
        v62 = 331;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to create audio stream", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 331, "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "going to create audio stream");
    v32 = [v16 mutableCopy];
    v54 = v12;
    [v32 setObject:v12 forKeyedSubscript:kAVCMediaStreamOptionClientName];
    [v32 setObject:v13 forKeyedSubscript:kAVCMediaStreamOptionClientSessionID];
    v57 = v17;
    v55 = v10;
    v33 = [[AVCAudioStream alloc] initWithIDSDestination:v10 options:v32 error:&v57];
    v34 = v57;

    if (sub_1000423E0())
    {
      v35 = sub_100042E68();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v60 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
        v61 = 1024;
        v62 = 339;
        v63 = 2048;
        v64 = v33;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] created audio stream %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 339, "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "created audio stream %p", v33);
    if (v33)
    {
      v36 = v13;
      v56 = v34;
      v37 = v11;
      v38 = [v33 configure:v11 error:&v56];
      v17 = v56;

      if (v38)
      {
        v11 = v37;
        v10 = v55;
        v13 = v36;
LABEL_45:
        v42 = v33;

        v43 = v42;
        v12 = v54;
        goto LABEL_46;
      }

      v11 = v37;
      if (sub_1000423E0())
      {
        v50 = sub_100042E68();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = [v17 description];
          v52 = [v51 UTF8String];
          *buf = 136315650;
          v60 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
          v61 = 1024;
          v62 = 348;
          v63 = 2080;
          v64 = v52;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "[%s:%d] unable to configure audio stream:  %s", buf, 0x1Cu);

          v11 = v37;
        }
      }

      v49 = [v17 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 348, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 3, 0, "unable to configure audio stream:  %s", [v49 UTF8String]);
      v10 = v55;
      v13 = v36;
    }

    else
    {
      if (sub_1000423E0())
      {
        v44 = sub_100042E68();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [v34 description];
          v45 = v13;
          v47 = v46 = v11;
          v48 = [v47 UTF8String];
          *buf = 136315650;
          v60 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
          v61 = 1024;
          v62 = 342;
          v63 = 2080;
          v64 = v48;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "[%s:%d] unable to get audio stream:  %s", buf, 0x1Cu);

          v11 = v46;
          v13 = v45;
        }
      }

      v49 = [v34 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 342, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 3, 0, "unable to get audio stream:  %s", [v49 UTF8String]);
      v17 = v34;
      v10 = v55;
    }

    goto LABEL_45;
  }

  if (v18)
  {
    v39 = sub_100042E68();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [v17 description];
      v41 = [v40 UTF8String];
      *buf = 136315650;
      v60 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
      v61 = 1024;
      v62 = 323;
      v63 = 2080;
      v64 = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "[%s:%d] unable to generate media stream init options for audio stream: %s", buf, 0x1Cu);
    }
  }

  v42 = [v17 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 323, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 3, 0, "unable to generate media stream init options for audio stream: %s", [v42 UTF8String]);
  v43 = 0;
LABEL_46:

  return v43;
}

- (void)logUnexpectedVideoConfigInfo:(id)a3
{
  v3 = a3;
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
      v60 = 1024;
      v61 = 359;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] check video config", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 359, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 7, 0, "check video config");
  if ([v3 direction] != 1)
  {
    if (sub_1000423E0())
    {
      v5 = sub_100042E68();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 direction];
        *buf = 136315906;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 361;
        v62 = 2048;
        v63 = v6;
        v64 = 2048;
        v65 = 1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] config direction = %ld expect %ld", buf, 0x26u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 361, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config direction = %ld expect %ld", [v3 direction], 1);
  }

  if (([v3 isRateAdaptationEnabled] & 1) == 0)
  {
    if (sub_1000423E0())
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 363;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] config rateAdaptationEnabled is false", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 363, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config rateAdaptationEnabled is false");
  }

  if (([v3 isRTCPEnabled] & 1) == 0)
  {
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 365;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] config rtcpEnabled is false", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 365, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config rtcpEnabled is false");
  }

  if ([v3 rxPayloadType] != 100 || (v9 = objc_msgSend(v3, "rxPayloadType"), v9 != objc_msgSend(v3, "txPayloadType")))
  {
    if (sub_1000423E0())
    {
      v10 = sub_100042E68();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v3 rxPayloadType];
        v12 = [v3 txPayloadType];
        *buf = 136315906;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 367;
        v62 = 2048;
        v63 = v11;
        v64 = 2048;
        v65 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] config rxPayloadType = %lu config.txPayloadType = %lu", buf, 0x26u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 367, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config rxPayloadType = %lu config.txPayloadType = %lu", [v3 rxPayloadType], objc_msgSend(v3, "txPayloadType"));
  }

  if ([v3 remoteSSRC] != -1091576147)
  {
    if (sub_1000423E0())
    {
      v13 = sub_100042E68();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v3 remoteSSRC];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 369;
        v62 = 1024;
        LODWORD(v63) = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] config.remoteSSRC = %x", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 369, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config.remoteSSRC = %x", [v3 remoteSSRC]);
  }

  if ([v3 localSSRC] != -559038737)
  {
    if (sub_1000423E0())
    {
      v15 = sub_100042E68();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v3 localSSRC];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 371;
        v62 = 1024;
        LODWORD(v63) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] config.localSSRC = %x", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 371, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config.localSSRC = %x", [v3 localSSRC]);
  }

  [v3 rtcpSendInterval];
  if (v17 != 1.0)
  {
    if (sub_1000423E0())
    {
      v18 = sub_100042E68();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        [v3 rtcpSendInterval];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 374;
        v62 = 2048;
        v63 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] config rtcpSendInterval = %f", buf, 0x1Cu);
      }
    }

    [v3 rtcpSendInterval];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 374, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config rtcpSendInterval = %f", v20);
  }

  if (([v3 isRTCPTimeOutEnabled] & 1) == 0)
  {
    if (sub_1000423E0())
    {
      v21 = sub_100042E68();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 376;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] config rtcpTimeOutEnabled not enabled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 376, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config rtcpTimeOutEnabled not enabled");
  }

  if ([v3 SRTPCipherSuite] != 5)
  {
    if (sub_1000423E0())
    {
      v22 = sub_100042E68();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v3 SRTPCipherSuite];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 378;
        v62 = 2048;
        v63 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] config SRTPCipherSuite = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 378, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config SRTPCipherSuite = %ld", [v3 SRTPCipherSuite]);
  }

  if ([v3 SRTCPCipherSuite] != 5)
  {
    if (sub_1000423E0())
    {
      v24 = sub_100042E68();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v3 SRTCPCipherSuite];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 380;
        v62 = 2048;
        v63 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] config SRTCPCipherSuite = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 380, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config SRTCPCipherSuite = %ld", [v3 SRTCPCipherSuite]);
  }

  v26 = [v3 video];
  if ([v26 captureSource] != 1)
  {
    if (sub_1000423E0())
    {
      v27 = sub_100042E68();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v26 captureSource];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 383;
        v62 = 2048;
        v63 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig captureSource = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 383, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig captureSource = %ld", [v26 captureSource]);
  }

  if ([v26 rxCodecType] != 1)
  {
    if (sub_1000423E0())
    {
      v29 = sub_100042E68();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v26 rxCodecType];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 385;
        v62 = 2048;
        v63 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig rxCodecType = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 385, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig rxCodecType = %ld", [v26 rxCodecType]);
  }

  if ([v26 txCodecType] != 1)
  {
    if (sub_1000423E0())
    {
      v31 = sub_100042E68();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v26 txCodecType];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 387;
        v62 = 2048;
        v63 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig txCodecType = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 387, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig txCodecType = %ld", [v26 txCodecType]);
  }

  if ([v26 framerate] != 60)
  {
    if (sub_1000423E0())
    {
      v33 = sub_100042E68();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v26 framerate];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 389;
        v62 = 2048;
        v63 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig framerate = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 389, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig framerate = %ld", [v26 framerate]);
  }

  if ([v26 txMaxBitrate] != 40000000)
  {
    if (sub_1000423E0())
    {
      v35 = sub_100042E68();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v26 txMaxBitrate];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 391;
        v62 = 2048;
        v63 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig txMaxBitrate = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 391, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig txMaxBitrate = %ld", [v26 txMaxBitrate]);
  }

  if ([v26 txMinBitrate] != 20000000)
  {
    if (sub_1000423E0())
    {
      v37 = sub_100042E68();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v26 txMinBitrate];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 393;
        v62 = 2048;
        v63 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig rxMinBitrate = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 393, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig rxMinBitrate = %ld", [v26 txMinBitrate]);
  }

  if ([v26 videoStreamMode] != 4)
  {
    if (sub_1000423E0())
    {
      v39 = sub_100042E68();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v26 videoStreamMode];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 395;
        v62 = 2048;
        v63 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig videoStreamMode = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 395, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig videoStreamMode = %ld", [v26 videoStreamMode]);
  }

  if ([v26 pixelFormat] == 2019963956)
  {
    if (sub_1000423E0())
    {
      v41 = sub_100042E68();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 398;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] pixelFormat set for HDR mode", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 398, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 7, 0, "pixelFormat set for HDR mode");
    if ([v26 hdrMode] != 3)
    {
      if (sub_1000423E0())
      {
        v42 = sub_100042E68();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v26 hdrMode];
          *buf = 136315906;
          v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
          v60 = 1024;
          v61 = 400;
          v62 = 2048;
          v63 = v43;
          v64 = 2048;
          v65 = 3;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%s:%d] hdrMode set to %lu expected %lu", buf, 0x26u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 400, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "hdrMode set to %lu expected %lu", [v26 hdrMode]);
    }
  }

  else if ([v26 pixelFormat] == 875836518 && objc_msgSend(v26, "hdrMode") == 3)
  {
    if (sub_1000423E0())
    {
      v44 = sub_100042E68();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 403;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%s:%d] pixel format is 8 bit, but hdrMode is set", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 403, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "pixel format is 8 bit, but hdrMode is set");
  }

  else if ([v26 pixelFormat] != 875836518)
  {
    if (sub_1000423E0())
    {
      v45 = sub_100042E68();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v26 pixelFormat];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 405;
        v62 = 1024;
        LODWORD(v63) = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%s:%d] pixel format is actually 0x%x", buf, 0x18u);
      }
    }

    [v26 pixelFormat];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 405, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "pixel format is actually 0x%x");
  }

  if (([v26 isLTRPEnabled] & 1) == 0)
  {
    if (sub_1000423E0())
    {
      v47 = sub_100042E68();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 408;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig ltrpEnabled not enabled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 408, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig ltrpEnabled not enabled");
  }

  if ([v26 tilesPerFrame] != 4)
  {
    if (sub_1000423E0())
    {
      v48 = sub_100042E68();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [v26 tilesPerFrame];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 410;
        v62 = 2048;
        v63 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig tilesPerFrame = %lu", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 410, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig tilesPerFrame = %lu", [v26 tilesPerFrame]);
  }

  v50 = [v26 txCodecFeatureListString];
  v51 = [v50 isEqualToString:@"LF:-1;HTS:2;FLS;POS:5;EOD:1;RR:3"];

  if ((v51 & 1) == 0)
  {
    if (sub_1000423E0())
    {
      v52 = sub_100042E68();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [v26 txCodecFeatureListString];
        v54 = [v53 description];
        v55 = [v54 UTF8String];
        *buf = 136315650;
        v59 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v60 = 1024;
        v61 = 412;
        v62 = 2080;
        v63 = v55;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoconfig txCodecFeatureListString %s", buf, 0x1Cu);
      }
    }

    v56 = [v26 txCodecFeatureListString];
    v57 = [v56 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 412, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoconfig txCodecFeatureListString %s", [v57 UTF8String]);
  }
}

- (void)streamDidStop:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = sub_1000423E0();
  if (isKindOfClass)
  {
    if (v5)
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = "[SSAVCMediaStreamController streamDidStop:]";
        v10 = 1024;
        v11 = 430;
        v12 = 2048;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] video streamDidStop: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 430, "[SSAVCMediaStreamController streamDidStop:]", 7, 0, "video streamDidStop: %p");
  }

  else
  {
    if (v5)
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = "[SSAVCMediaStreamController streamDidStop:]";
        v10 = 1024;
        v11 = 432;
        v12 = 2048;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio streamDidStop: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 432, "[SSAVCMediaStreamController streamDidStop:]", 7, 0, "audio streamDidStop: %p");
  }
}

- (void)streamDidServerDie:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = sub_1000423E0();
  if (isKindOfClass)
  {
    if (v6)
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = "[SSAVCMediaStreamController streamDidServerDie:]";
        v12 = 1024;
        v13 = 438;
        v14 = 2048;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%s:%d] video streamDidServerDie: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 438, "[SSAVCMediaStreamController streamDidServerDie:]", 3, 0, "video streamDidServerDie: %p");
  }

  else
  {
    if (v6)
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = "[SSAVCMediaStreamController streamDidServerDie:]";
        v12 = 1024;
        v13 = 440;
        v14 = 2048;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%s:%d] audio streamDidServerDie: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 440, "[SSAVCMediaStreamController streamDidServerDie:]", 3, 0, "audio streamDidServerDie: %p");
  }

  v9 = [(SSAVCMediaStreamController *)self delegate];
  [v9 SSMediaStreamServerDidDie];
}

- (void)stream:(id)a3 didUpdateVideoConfiguration:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if (sub_1000423E0())
  {
    v9 = sub_100042E68();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 code];
      v11 = [v8 description];
      *buf = 136316418;
      v15 = "[SSAVCMediaStreamController stream:didUpdateVideoConfiguration:error:]";
      v16 = 1024;
      v17 = 463;
      v18 = 2048;
      v19 = v7;
      v20 = 1024;
      v21 = v6;
      v22 = 2048;
      v23 = v10;
      v24 = 2080;
      v25 = [v11 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] video stream: %p   didUpdateVideoConfiguration: %d  error: %ld %s", buf, 0x36u);
    }
  }

  v12 = [v8 code];
  v13 = [v8 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 463, "-[SSAVCMediaStreamController stream:didUpdateVideoConfiguration:error:]", 7, 0, "video stream: %p   didUpdateVideoConfiguration: %d  error: %ld %s", v7, v6, v12, [v13 UTF8String]);
}

- (void)streamDidRTPTimeOut:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = sub_1000423E0();
  if (isKindOfClass)
  {
    if (v5)
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = "[SSAVCMediaStreamController streamDidRTPTimeOut:]";
        v10 = 1024;
        v11 = 469;
        v12 = 2048;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] video streamDidRTPTimeOut: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 469, "[SSAVCMediaStreamController streamDidRTPTimeOut:]", 7, 0, "video streamDidRTPTimeOut: %p");
  }

  else
  {
    if (v5)
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = "[SSAVCMediaStreamController streamDidRTPTimeOut:]";
        v10 = 1024;
        v11 = 471;
        v12 = 2048;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio streamDidRTPTimeOut: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 471, "[SSAVCMediaStreamController streamDidRTPTimeOut:]", 7, 0, "audio streamDidRTPTimeOut: %p");
  }
}

- (void)streamDidRTCPTimeOut:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = sub_1000423E0();
  if (isKindOfClass)
  {
    if (v6)
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v13 = "[SSAVCMediaStreamController streamDidRTCPTimeOut:]";
        v14 = 1024;
        v15 = 477;
        v16 = 2048;
        v17 = v4;
        v18 = 1024;
        v19 = [(SSAVCMediaStreamController *)self RTCPTimeoutCount]+ 1;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] video streamDidRTCPTimeOut: %p count: %u", buf, 0x22u);
      }
    }

    [(SSAVCMediaStreamController *)self RTCPTimeoutCount];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 477, "[SSAVCMediaStreamController streamDidRTCPTimeOut:]", 7, 0, "video streamDidRTCPTimeOut: %p count: %u", v4);
  }

  else
  {
    if (v6)
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v13 = "[SSAVCMediaStreamController streamDidRTCPTimeOut:]";
        v14 = 1024;
        v15 = 479;
        v16 = 2048;
        v17 = v4;
        v18 = 1024;
        v19 = [(SSAVCMediaStreamController *)self RTCPTimeoutCount]+ 1;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio streamDidRTCPTimeOut: %p count: %u", buf, 0x22u);
      }
    }

    [(SSAVCMediaStreamController *)self RTCPTimeoutCount];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 479, "[SSAVCMediaStreamController streamDidRTCPTimeOut:]", 7, 0, "audio streamDidRTCPTimeOut: %p count: %u", v4);
  }

  if ([(SSAVCMediaStreamController *)self RTCPTimeoutCount]< 0xA)
  {
    v11 = [(SSAVCMediaStreamController *)self RTCPTimeoutCount]+ 1;
  }

  else
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[SSAVCMediaStreamController streamDidRTCPTimeOut:]";
        v14 = 1024;
        v15 = 482;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] too many RTCP timeouts", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 482, "[SSAVCMediaStreamController streamDidRTCPTimeOut:]", 7, 0, "too many RTCP timeouts");
    v10 = [(SSAVCMediaStreamController *)self delegate];
    [v10 SSMediaStreamTimeout];

    v11 = 0;
  }

  [(SSAVCMediaStreamController *)self setRTCPTimeoutCount:v11];
}

- (void)stream:(id)a3 didReceiveRTCPPackets:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SSAVCMediaStreamController *)self setRTCPTimeoutCount:0];
  objc_opt_class();
  LOBYTE(self) = objc_opt_isKindOfClass();
  v8 = sub_1000423E0();
  if (self)
  {
    if (v8)
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = "[SSAVCMediaStreamController stream:didReceiveRTCPPackets:]";
        v13 = 1024;
        v14 = 494;
        v15 = 2048;
        v16 = v6;
        v17 = 2048;
        v18 = [v7 count];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] video stream: %p   didReceiveRTCPPackets: %lu packets", buf, 0x26u);
      }
    }

    [v7 count];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 494, "[SSAVCMediaStreamController stream:didReceiveRTCPPackets:]", 7, 0, "video stream: %p   didReceiveRTCPPackets: %lu packets", v6);
  }

  else
  {
    if (v8)
    {
      v10 = sub_100042E68();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = "[SSAVCMediaStreamController stream:didReceiveRTCPPackets:]";
        v13 = 1024;
        v14 = 496;
        v15 = 2048;
        v16 = v6;
        v17 = 2048;
        v18 = [v7 count];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p   didReceiveRTCPPackets: %lu packets", buf, 0x26u);
      }
    }

    [v7 count];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 496, "[SSAVCMediaStreamController stream:didReceiveRTCPPackets:]", 7, 0, "audio stream: %p   didReceiveRTCPPackets: %lu packets", v6);
  }
}

- (void)stream:(id)a3 didGetLastDecodedFrame:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = "[SSAVCMediaStreamController stream:didGetLastDecodedFrame:]";
      v10 = 1024;
      v11 = 501;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = [v6 length];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] video didGetLastDecodedFrame: %p  data size %ld", buf, 0x26u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 501, "-[SSAVCMediaStreamController stream:didGetLastDecodedFrame:]", 7, 0, "video didGetLastDecodedFrame: %p  data size %ld", v5, [v6 length]);
}

- (void)stream:(id)a3 downlinkQualityDidChange:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 description];
      *buf = 136315906;
      v11 = "[SSAVCMediaStreamController stream:downlinkQualityDidChange:]";
      v12 = 1024;
      v13 = 506;
      v14 = 2048;
      v15 = v5;
      v16 = 2080;
      v17 = [v8 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] video stream: %p   downlinkQualityDidChange:%s", buf, 0x26u);
    }
  }

  v9 = [v6 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 506, "-[SSAVCMediaStreamController stream:downlinkQualityDidChange:]", 7, 0, "video stream: %p   downlinkQualityDidChange:%s", v5, [v9 UTF8String]);
}

- (void)stream:(id)a3 uplinkQualityDidChange:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 description];
      *buf = 136315906;
      v11 = "[SSAVCMediaStreamController stream:uplinkQualityDidChange:]";
      v12 = 1024;
      v13 = 511;
      v14 = 2048;
      v15 = v5;
      v16 = 2080;
      v17 = [v8 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] video stream: %p   uplinkQualityDidChange:%s", buf, 0x26u);
    }
  }

  v9 = [v6 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 511, "-[SSAVCMediaStreamController stream:uplinkQualityDidChange:]", 7, 0, "video stream: %p   uplinkQualityDidChange:%s", v5, [v9 UTF8String]);
}

- (void)streamDidInterruptionBegin:(id)a3
{
  v3 = a3;
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = "[SSAVCMediaStreamController streamDidInterruptionBegin:]";
      v7 = 1024;
      v8 = 516;
      v9 = 2048;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio streamDidInterruptionBegin: %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 516, "[SSAVCMediaStreamController streamDidInterruptionBegin:]", 7, 0, "audio streamDidInterruptionBegin: %p", v3);
}

- (void)streamDidInterruptionEnd:(id)a3
{
  v3 = a3;
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = "[SSAVCMediaStreamController streamDidInterruptionEnd:]";
      v7 = 1024;
      v8 = 521;
      v9 = 2048;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio streamDidInterruptionEnd: %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 521, "[SSAVCMediaStreamController streamDidInterruptionEnd:]", 7, 0, "audio streamDidInterruptionEnd: %p", v3);
}

- (void)stream:(id)a3 didStartSynchronizer:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if (sub_1000423E0())
  {
    v9 = sub_100042E68();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 code];
      v11 = [v8 description];
      *buf = 136316418;
      v15 = "[SSAVCMediaStreamController stream:didStartSynchronizer:error:]";
      v16 = 1024;
      v17 = 526;
      v18 = 2048;
      v19 = v7;
      v20 = 1024;
      v21 = v6;
      v22 = 2048;
      v23 = v10;
      v24 = 2080;
      v25 = [v11 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p  didStartSynchronizer: %d error: %ld %s", buf, 0x36u);
    }
  }

  v12 = [v8 code];
  v13 = [v8 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 526, "-[SSAVCMediaStreamController stream:didStartSynchronizer:error:]", 7, 0, "audio stream: %p  didStartSynchronizer: %d error: %ld %s", v7, v6, v12, [v13 UTF8String]);
}

- (void)stream:(id)a3 didReceiveDTMFEventWithDigit:(char)a4
{
  v4 = a4;
  v5 = a3;
  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v8 = "[SSAVCMediaStreamController stream:didReceiveDTMFEventWithDigit:]";
      v9 = 1024;
      v10 = 531;
      v11 = 2048;
      v12 = v5;
      v13 = 1024;
      v14 = v4;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p didReceiveDTMFEventWithDigit:%c (0x%x)", buf, 0x28u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 531, "[SSAVCMediaStreamController stream:didReceiveDTMFEventWithDigit:]", 7, 0, "audio stream: %p didReceiveDTMFEventWithDigit:%c (0x%x)", v5, v4, v4);
}

- (void)stream:(id)a3 updateInputFrequencyLevel:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = "[SSAVCMediaStreamController stream:updateInputFrequencyLevel:]";
      v10 = 1024;
      v11 = 536;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = [v6 length];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p updateInputFrequencyLevel  data length %ld", buf, 0x26u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 536, "-[SSAVCMediaStreamController stream:updateInputFrequencyLevel:]", 7, 0, "audio stream: %p updateInputFrequencyLevel  data length %ld", v5, [v6 length]);
}

- (void)stream:(id)a3 updateOutputFrequencyLevel:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = "[SSAVCMediaStreamController stream:updateOutputFrequencyLevel:]";
      v10 = 1024;
      v11 = 541;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = [v6 length];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p updateOutputFrequencyLevel  data length %ld", buf, 0x26u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 541, "-[SSAVCMediaStreamController stream:updateOutputFrequencyLevel:]", 7, 0, "audio stream: %p updateOutputFrequencyLevel  data length %ld", v5, [v6 length]);
}

- (void)screenCapture:(id)a3 didStop:(BOOL)a4 withError:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if (sub_1000423E0())
  {
    v9 = sub_100042E68();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 code];
      v11 = [v8 description];
      *buf = 136316418;
      v15 = "[SSAVCMediaStreamController screenCapture:didStop:withError:]";
      v16 = 1024;
      v17 = 548;
      v18 = 2048;
      v19 = v7;
      v20 = 1024;
      v21 = v6;
      v22 = 2048;
      v23 = v10;
      v24 = 2080;
      v25 = [v11 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] screenCapture: %p  didStop: %d  error: %ld %s", buf, 0x36u);
    }
  }

  v12 = [v8 code];
  v13 = [v8 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 548, "-[SSAVCMediaStreamController screenCapture:didStop:withError:]", 7, 0, "screenCapture: %p  didStop: %d  error: %ld %s", v7, v6, v12, [v13 UTF8String]);
}

- (void)screenCapture:(id)a3 didStart:(BOOL)a4 withError:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if (sub_1000423E0())
  {
    v9 = sub_100042E68();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 code];
      v11 = [v8 description];
      *buf = 136316418;
      v15 = "[SSAVCMediaStreamController screenCapture:didStart:withError:]";
      v16 = 1024;
      v17 = 553;
      v18 = 2048;
      v19 = v7;
      v20 = 1024;
      v21 = v6;
      v22 = 2048;
      v23 = v10;
      v24 = 2080;
      v25 = [v11 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] screenCapture: %p  didStart: %d  error: %ld %s", buf, 0x36u);
    }
  }

  v12 = [v8 code];
  v13 = [v8 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 553, "-[SSAVCMediaStreamController screenCapture:didStart:withError:]", 7, 0, "screenCapture: %p  didStart: %d  error: %ld %s", v7, v6, v12, [v13 UTF8String]);
}

- (void)serverDidDisconnect:(id)a3
{
  v3 = a3;
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = "[SSAVCMediaStreamController serverDidDisconnect:]";
      v7 = 1024;
      v8 = 558;
      v9 = 2048;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] screenCapture serverDidDisconnect %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 558, "[SSAVCMediaStreamController serverDidDisconnect:]", 7, 0, "screenCapture serverDidDisconnect %p", v3);
}

- (SSAVCMediaStreamControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end