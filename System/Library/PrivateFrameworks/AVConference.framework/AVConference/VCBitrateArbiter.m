@interface VCBitrateArbiter
+ (void)updateMaxAllowedBitratePerConnection:(unsigned int *)a3 connectionType:(int)a4 negotiatedSettings:(id)a5;
- (VCBitrateArbiter)initWithDeviceRole:(int)a3 callLogFile:(void *)a4;
- (id)maxAllowedBitrateRuleForConnection:(int)a3;
- (int)storeBagBitrateForKey:(id)a3;
- (unsigned)maxAllowedAudioOnlyBitrateForConnection:(int)a3;
- (unsigned)maxAllowedBitrateForConnectionType:(int)a3;
- (unsigned)maxAllowedBitrateForConnectionType:(int)a3 arbiterMode:(unsigned __int8)a4;
- (unsigned)maxAllowedBitrateForVCConnection:(id)a3 forLocalInterface:(BOOL)a4 arbiterMode:(unsigned __int8)a5 encodeRule:(id)a6;
- (unsigned)maxAllowedBitrateForVCConnection:(id)a3 forLocalInterface:(BOOL)a4 encodeRule:(id)a5;
- (unsigned)maxAllowedImmersiveVideoBitrateForConnectionType:(int)a3;
- (unsigned)maxAllowedScreenShareBitrateForConnection:(int)a3;
- (unsigned)maxAllowedScreenShareCellularBitrate;
- (void)addRuleForBitrate:(unsigned int)a3 connectionType:(int)a4 limitingRule:(id)a5;
- (void)createSupportedBitrateRuleSets;
- (void)dealloc;
- (void)readCarrierBundleValues;
- (void)readHardwareValues;
- (void)readStoreBagValues:(void *)a3;
- (void)updateMaxAllowedBitrate:(unsigned int *)a3 key:(__CFString *)a4 type:(id)a5 isAudio:(BOOL)a6 carrierBundleBitrates:(__CFDictionary *)a7;
- (void)updateNegotiatedSettings:(id)a3;
@end

@implementation VCBitrateArbiter

- (VCBitrateArbiter)initWithDeviceRole:(int)a3 callLogFile:(void *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCBitrateArbiter;
  v5 = [(VCBitrateArbiter *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(VCBitrateArbiter *)v5 readHardwareValues];
    [(VCBitrateArbiter *)v6 readStoreBagValues:a4];
    [(VCBitrateArbiter *)v6 readCarrierBundleValues];
    [(VCBitrateArbiter *)v6 createSupportedBitrateRuleSets];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = [-[NSMutableArray description](v6->supportedBitrateRules "description")];
        *buf = 136315906;
        v15 = v7;
        v16 = 2080;
        v17 = "[VCBitrateArbiter initWithDeviceRole:callLogFile:]";
        v18 = 1024;
        v19 = 190;
        v20 = 2080;
        v21 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCBitrateArbiter: Bitrate rules %s", buf, 0x26u);
      }
    }

    v10 = [(VCBitrateArbiter *)v6 maxAllowedCellularBitrate];
    maxAllowedBitrateWifi = v6->_maxAllowedBitrateWifi;
    if (v10 > maxAllowedBitrateWifi)
    {
      maxAllowedBitrateWifi = [(VCBitrateArbiter *)v6 maxAllowedCellularBitrate];
    }

    v6->_maxAllowedBitrate = maxAllowedBitrateWifi;
    v6->_maxAllowedAudioOnlyBitrateWifi = 299;
    v6->_maxAllowedScreenShareBitrateWifi = 4100;
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCBitrateArbiter;
  [(VCBitrateArbiter *)&v3 dealloc];
}

- (void)createSupportedBitrateRuleSets
{
  self->supportedBitrateRules = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [VCVideoRule alloc];
  LODWORD(v4) = 15.0;
  v5 = [(VCVideoRule *)v3 initWithFrameWidth:480 frameHeight:368 frameRate:123 payload:v4];
  [(VCBitrateArbiter *)self addRuleForBitrate:self->_maxAllowedBitrate2G connectionType:0 limitingRule:v5];

  v6 = [VCVideoRule alloc];
  LODWORD(v7) = 30.0;
  v8 = [(VCVideoRule *)v6 initWithFrameWidth:640 frameHeight:480 frameRate:123 payload:v7];
  [(VCBitrateArbiter *)self addRuleForBitrate:self->_maxAllowedBitrate3G connectionType:1 limitingRule:v8];

  LODWORD(v8) = self->_maxAllowedBitrateLTE;
  v9 = [VCVideoRule alloc];
  LODWORD(v10) = 30.0;
  if (v8 < 0x258)
  {
    v11 = 640;
    v12 = 480;
  }

  else
  {
    v11 = 1024;
    v12 = 768;
  }

  v13 = [(VCVideoRule *)v9 initWithFrameWidth:v11 frameHeight:v12 frameRate:123 payload:v10];
  [(VCBitrateArbiter *)self addRuleForBitrate:self->_maxAllowedBitrateLTE connectionType:2 limitingRule:v13];

  v14 = [VCVideoRule alloc];
  LODWORD(v15) = 1114636288;
  v16 = [(VCVideoRule *)v14 initWithFrameWidth:1664 frameHeight:1248 frameRate:123 payload:v15];
  [(VCBitrateArbiter *)self addRuleForBitrate:self->_maxAllowedBitrateHighRat connectionType:6 limitingRule:v16];

  v17 = [VCVideoRule alloc];
  LODWORD(v18) = 1114636288;
  v19 = [(VCVideoRule *)v17 initWithFrameWidth:1664 frameHeight:1248 frameRate:123 payload:v18];
  [(VCBitrateArbiter *)self addRuleForBitrate:self->_maxAllowedBitrateWifi connectionType:3 limitingRule:v19];

  supportedBitrateRules = self->supportedBitrateRules;

  [(NSMutableArray *)supportedBitrateRules sortUsingSelector:sel_compare_];
}

- (void)addRuleForBitrate:(unsigned int)a3 connectionType:(int)a4 limitingRule:(id)a5
{
  v6 = [[VCBitrateRule alloc] initWithBitrate:*&a3 connectionType:*&a4 limitingRule:a5];
  [(NSMutableArray *)self->supportedBitrateRules addObject:v6];
}

- (void)readHardwareValues
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCBitrateArbiter readHardwareValues]";
  v6 = 1024;
  v7 = 295;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCVideoRuleCollectionsCamera bitrateConfiguration returned NULL", &v2, 0x1Cu);
}

- (int)storeBagBitrateForKey:(id)a3
{
  v4 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (!v4)
  {
    v4 = [objc_msgSend(MEMORY[0x1E69A53F0] "sharedInstance")];
  }

  v5 = [v4 intValue];

  return v5;
}

- (void)readStoreBagValues:(void *)a3
{
  v353 = *MEMORY[0x1E69E9840];
  v5 = +[GKSConnectivitySettings getAllSettings];
  if (v5)
  {
    LOBYTE(v12) = [objc_msgSend(v5 "description")];
  }

  else
  {
    v12 = "<nil>";
  }

  VRLogfilePrintWithTimestamp(a3, "Current bag settings: %s\n", v6, v7, v8, v9, v10, v11, v12);
  v13 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-bitrate-max-2g"];
  if (rangeCheck(v13))
  {
    maxAllowedBitrate2G = self->_maxAllowedBitrate2G;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (maxAllowedBitrate2G)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          *buf = 136316162;
          v342 = v16;
          v343 = 2080;
          v344 = "[VCBitrateArbiter readStoreBagValues:]";
          v345 = 1024;
          v346 = 331;
          v347 = 2080;
          Name = class_getName(v18);
          v349 = 1024;
          v350 = v13;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 2G bitrate with storebag value of %d", buf, 0x2Cu);
        }
      }

      v19 = objc_opt_class();
      v20 = class_getName(v19);
      VRLogfilePrintWithTimestamp(a3, "%s: overriding 2G bitrate with storebag value of %d\n", v21, v22, v23, v24, v25, v26, v20);
      self->_maxAllowedBitrate2G = v13;
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_opt_class();
          *buf = 136316162;
          v342 = v27;
          v343 = 2080;
          v344 = "[VCBitrateArbiter readStoreBagValues:]";
          v345 = 1024;
          v346 = 334;
          v347 = 2080;
          Name = class_getName(v29);
          v349 = 1024;
          v350 = v13;
          _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 2G, ignored storebag value of %d", buf, 0x2Cu);
        }
      }

      v30 = objc_opt_class();
      v31 = class_getName(v30);
      VRLogfilePrintWithTimestamp(a3, "%s: hardware does not support 2G, ignored storebag value of %d\n", v32, v33, v34, v35, v36, v37, v31);
    }
  }

  v38 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ss-bitrate-max-2g"];
  if (v38)
  {
    v39 = v38;
    if (rangeCheck(v38))
    {
      v40 = self->_maxAllowedBitrate2G;
      v41 = VRTraceGetErrorLogLevelForModule();
      if (v40)
      {
        if (v41 >= 7)
        {
          v42 = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v44 = objc_opt_class();
            v45 = class_getName(v44);
            *buf = 136316162;
            v342 = v42;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 346;
            v347 = 2080;
            Name = v45;
            v349 = 1024;
            v350 = v39;
            _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding ScreenShare 2G bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v46 = objc_opt_class();
        v47 = class_getName(v46);
        VRLogfilePrintWithTimestamp(a3, "%s: overriding ScreenShare 2G bitrate with storebag value of %d\n", v48, v49, v50, v51, v52, v53, v47);
        self->_maxAllowedScreenShareBitrate2G = v39;
      }

      else
      {
        if (v41 >= 7)
        {
          v54 = VRTraceErrorLogLevelToCSTR();
          v55 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v56 = objc_opt_class();
            v57 = class_getName(v56);
            *buf = 136316162;
            v342 = v54;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 349;
            v347 = 2080;
            Name = v57;
            v349 = 1024;
            v350 = v39;
            _os_log_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 2G, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v58 = objc_opt_class();
        v59 = class_getName(v58);
        VRLogfilePrintWithTimestamp(a3, "%s: hardware does not support 2G, ignored storebag value of %d\n", v60, v61, v62, v63, v64, v65, v59);
      }
    }
  }

  else
  {
    self->_maxAllowedScreenShareBitrate2G = 510;
  }

  v66 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ac-bitrate-max-2g"];
  if (v66)
  {
    v67 = v66;
    if (IsValidAudioBitrateRange(v66))
    {
      v68 = self->_maxAllowedBitrate2G;
      v69 = VRTraceGetErrorLogLevelForModule();
      if (v68)
      {
        if (v69 >= 7)
        {
          v70 = VRTraceErrorLogLevelToCSTR();
          v71 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v72 = objc_opt_class();
            v73 = class_getName(v72);
            *buf = 136316162;
            v342 = v70;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 362;
            v347 = 2080;
            Name = v73;
            v349 = 1024;
            v350 = v67;
            _os_log_impl(&dword_1DB56E000, v71, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 2G AppleCalling bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v74 = objc_opt_class();
        v75 = class_getName(v74);
        VRLogfilePrintWithTimestamp(a3, "%s: overriding 2G AppleCalling bitrate with storebag value of %d\n", v76, v77, v78, v79, v80, v81, v75);
        self->_maxAllowedAudioOnlyBitrate2G = v67;
      }

      else
      {
        if (v69 >= 7)
        {
          v82 = VRTraceErrorLogLevelToCSTR();
          v83 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v84 = objc_opt_class();
            v85 = class_getName(v84);
            *buf = 136316162;
            v342 = v82;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 365;
            v347 = 2080;
            Name = v85;
            v349 = 1024;
            v350 = v67;
            _os_log_impl(&dword_1DB56E000, v83, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 2G, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v86 = objc_opt_class();
        v87 = class_getName(v86);
        VRLogfilePrintWithTimestamp(a3, "%s: hardware does not support 2G, ignored storebag value of %d\n", v88, v89, v90, v91, v92, v93, v87);
      }
    }
  }

  else
  {
    self->_maxAllowedAudioOnlyBitrate2G = 21;
  }

  v94 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-bitrate-max-3g"];
  if (rangeCheck(v94))
  {
    maxAllowedBitrate3G = self->_maxAllowedBitrate3G;
    v96 = VRTraceGetErrorLogLevelForModule();
    if (maxAllowedBitrate3G)
    {
      if (v96 >= 7)
      {
        v97 = VRTraceErrorLogLevelToCSTR();
        v98 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v99 = objc_opt_class();
          v100 = class_getName(v99);
          *buf = 136316162;
          v342 = v97;
          v343 = 2080;
          v344 = "[VCBitrateArbiter readStoreBagValues:]";
          v345 = 1024;
          v346 = 374;
          v347 = 2080;
          Name = v100;
          v349 = 1024;
          v350 = v94;
          _os_log_impl(&dword_1DB56E000, v98, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 3G bitrate with storebag value of %d", buf, 0x2Cu);
        }
      }

      v101 = objc_opt_class();
      v102 = class_getName(v101);
      VRLogfilePrintWithTimestamp(a3, "%s: overriding 3G bitrate with storebag value of %d\n", v103, v104, v105, v106, v107, v108, v102);
      self->_maxAllowedBitrate3G = v94;
    }

    else
    {
      if (v96 >= 7)
      {
        v109 = VRTraceErrorLogLevelToCSTR();
        v110 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v111 = objc_opt_class();
          v112 = class_getName(v111);
          *buf = 136316162;
          v342 = v109;
          v343 = 2080;
          v344 = "[VCBitrateArbiter readStoreBagValues:]";
          v345 = 1024;
          v346 = 377;
          v347 = 2080;
          Name = v112;
          v349 = 1024;
          v350 = v94;
          _os_log_impl(&dword_1DB56E000, v110, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 3G, ignored storebag value of %d", buf, 0x2Cu);
        }
      }

      v113 = objc_opt_class();
      v114 = class_getName(v113);
      VRLogfilePrintWithTimestamp(a3, "%s: hardware does not support 3G, ignored storebag value of %d\n", v115, v116, v117, v118, v119, v120, v114);
    }
  }

  v121 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ss-bitrate-max-3g"];
  if (v121)
  {
    v122 = v121;
    if (rangeCheck(v121))
    {
      v123 = self->_maxAllowedBitrate3G;
      v124 = VRTraceGetErrorLogLevelForModule();
      if (v123)
      {
        if (v124 >= 7)
        {
          v125 = VRTraceErrorLogLevelToCSTR();
          v126 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v127 = objc_opt_class();
            v128 = class_getName(v127);
            *buf = 136316162;
            v342 = v125;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 389;
            v347 = 2080;
            Name = v128;
            v349 = 1024;
            v350 = v122;
            _os_log_impl(&dword_1DB56E000, v126, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 3G ScreenShare bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v129 = objc_opt_class();
        v130 = class_getName(v129);
        VRLogfilePrintWithTimestamp(a3, "%s: overriding 3G ScreenShare bitrate with storebag value of %d\n", v131, v132, v133, v134, v135, v136, v130);
        self->_maxAllowedScreenShareBitrate3G = v122;
      }

      else
      {
        if (v124 >= 7)
        {
          v137 = VRTraceErrorLogLevelToCSTR();
          v138 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v139 = objc_opt_class();
            v140 = class_getName(v139);
            *buf = 136316162;
            v342 = v137;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 392;
            v347 = 2080;
            Name = v140;
            v349 = 1024;
            v350 = v122;
            _os_log_impl(&dword_1DB56E000, v138, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 3G, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v141 = objc_opt_class();
        v142 = class_getName(v141);
        VRLogfilePrintWithTimestamp(a3, "%s: hardware does not support 3G, ignored storebag value of %d\n", v143, v144, v145, v146, v147, v148, v142);
      }
    }
  }

  else
  {
    self->_maxAllowedScreenShareBitrate3G = 510;
  }

  v149 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ac-bitrate-max-3g"];
  if (v149)
  {
    v150 = v149;
    if (IsValidAudioBitrateRange(v149))
    {
      v151 = self->_maxAllowedBitrate3G;
      v152 = VRTraceGetErrorLogLevelForModule();
      if (v151)
      {
        if (v152 >= 7)
        {
          v153 = VRTraceErrorLogLevelToCSTR();
          v154 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v155 = objc_opt_class();
            v156 = class_getName(v155);
            *buf = 136316162;
            v342 = v153;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 405;
            v347 = 2080;
            Name = v156;
            v349 = 1024;
            v350 = v150;
            _os_log_impl(&dword_1DB56E000, v154, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 3G AppleCalling bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v157 = objc_opt_class();
        v158 = class_getName(v157);
        VRLogfilePrintWithTimestamp(a3, "%s: overriding 3G AppleCalling bitrate with storebag value of %d\n", v159, v160, v161, v162, v163, v164, v158);
        self->_maxAllowedAudioOnlyBitrate3G = v150;
      }

      else
      {
        if (v152 >= 7)
        {
          v165 = VRTraceErrorLogLevelToCSTR();
          v166 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v167 = objc_opt_class();
            v168 = class_getName(v167);
            *buf = 136316162;
            v342 = v165;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 408;
            v347 = 2080;
            Name = v168;
            v349 = 1024;
            v350 = v150;
            _os_log_impl(&dword_1DB56E000, v166, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 3G, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v169 = objc_opt_class();
        v170 = class_getName(v169);
        VRLogfilePrintWithTimestamp(a3, "%s: hardware does not support 3G, ignored storebag value of %d\n", v171, v172, v173, v174, v175, v176, v170);
      }
    }
  }

  else
  {
    self->_maxAllowedAudioOnlyBitrate3G = 40;
  }

  v177 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-bitrate-max-lte-v2"];
  if (rangeCheck(v177))
  {
    if (self->_maxAllowedBitrateLTE)
    {
      if ((VRTraceIsInternalOSInstalled() & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v178 = VRTraceErrorLogLevelToCSTR();
          v179 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v180 = objc_opt_class();
            v181 = class_getName(v180);
            *buf = 136316162;
            v342 = v178;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 418;
            v347 = 2080;
            Name = v181;
            v349 = 1024;
            v350 = v177;
            _os_log_impl(&dword_1DB56E000, v179, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding LTE bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v182 = objc_opt_class();
        v183 = class_getName(v182);
        VRLogfilePrintWithTimestamp(a3, "%s: overriding LTE bitrate with storebag value of %d\n", v184, v185, v186, v187, v188, v189, v183);
        self->_maxAllowedBitrateLTE = v177;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v190 = VRTraceErrorLogLevelToCSTR();
        v191 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v192 = objc_opt_class();
          v193 = class_getName(v192);
          *buf = 136316162;
          v342 = v190;
          v343 = 2080;
          v344 = "[VCBitrateArbiter readStoreBagValues:]";
          v345 = 1024;
          v346 = 422;
          v347 = 2080;
          Name = v193;
          v349 = 1024;
          v350 = v177;
          _os_log_impl(&dword_1DB56E000, v191, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support LTE, ignored storebag value of %d", buf, 0x2Cu);
        }
      }

      v194 = objc_opt_class();
      v195 = class_getName(v194);
      VRLogfilePrintWithTimestamp(a3, "%s: hardware does not support LTE, ignored storebag value of %d\n", v196, v197, v198, v199, v200, v201, v195);
    }
  }

  v202 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-bitrate-max-5g"];
  if (rangeCheck(v202))
  {
    maxAllowedBitrateHighRat = self->_maxAllowedBitrateHighRat;
    v204 = VRTraceGetErrorLogLevelForModule();
    if (maxAllowedBitrateHighRat)
    {
      if (v204 >= 7)
      {
        v205 = VRTraceErrorLogLevelToCSTR();
        v206 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v207 = objc_opt_class();
          v208 = class_getName(v207);
          *buf = 136316162;
          v342 = v205;
          v343 = 2080;
          v344 = "[VCBitrateArbiter readStoreBagValues:]";
          v345 = 1024;
          v346 = 431;
          v347 = 2080;
          Name = v208;
          v349 = 1024;
          v350 = v202;
          _os_log_impl(&dword_1DB56E000, v206, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding 5G bitrate with storebag value of %d", buf, 0x2Cu);
        }
      }

      v209 = objc_opt_class();
      v210 = class_getName(v209);
      VRLogfilePrintWithTimestamp(a3, "%s: overriding 5G bitrate with storebag value of %d\n", v211, v212, v213, v214, v215, v216, v210);
      self->_maxAllowedBitrateHighRat = v202;
    }

    else
    {
      if (v204 >= 7)
      {
        v217 = VRTraceErrorLogLevelToCSTR();
        v218 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v219 = objc_opt_class();
          v220 = class_getName(v219);
          *buf = 136316162;
          v342 = v217;
          v343 = 2080;
          v344 = "[VCBitrateArbiter readStoreBagValues:]";
          v345 = 1024;
          v346 = 434;
          v347 = 2080;
          Name = v220;
          v349 = 1024;
          v350 = v202;
          _os_log_impl(&dword_1DB56E000, v218, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support 5G, ignored storebag value of %d", buf, 0x2Cu);
        }
      }

      v221 = objc_opt_class();
      v222 = class_getName(v221);
      VRLogfilePrintWithTimestamp(a3, "%s: hardware does not support 5G, ignored storebag value of %d\n", v223, v224, v225, v226, v227, v228, v222);
    }
  }

  v229 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-bitrate-max-wifi"];
  if (rangeCheck(v229))
  {
    maxAllowedBitrateWifi = self->_maxAllowedBitrateWifi;
    v231 = VRTraceGetErrorLogLevelForModule();
    if (maxAllowedBitrateWifi)
    {
      if (v231 >= 7)
      {
        v232 = VRTraceErrorLogLevelToCSTR();
        v233 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v234 = objc_opt_class();
          v235 = class_getName(v234);
          *buf = 136316162;
          v342 = v232;
          v343 = 2080;
          v344 = "[VCBitrateArbiter readStoreBagValues:]";
          v345 = 1024;
          v346 = 443;
          v347 = 2080;
          Name = v235;
          v349 = 1024;
          v350 = v229;
          _os_log_impl(&dword_1DB56E000, v233, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding Wi-Fi bitrate with storebag value of %d", buf, 0x2Cu);
        }
      }

      v236 = objc_opt_class();
      v237 = class_getName(v236);
      VRLogfilePrintWithTimestamp(a3, "%s: overriding Wi-Fi bitrate with storebag value of %d\n", v238, v239, v240, v241, v242, v243, v237);
      self->_maxAllowedBitrateWifi = v229;
    }

    else
    {
      if (v231 >= 7)
      {
        v244 = VRTraceErrorLogLevelToCSTR();
        v245 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v246 = objc_opt_class();
          v247 = class_getName(v246);
          *buf = 136316162;
          v342 = v244;
          v343 = 2080;
          v344 = "[VCBitrateArbiter readStoreBagValues:]";
          v345 = 1024;
          v346 = 446;
          v347 = 2080;
          Name = v247;
          v349 = 1024;
          v350 = v229;
          _os_log_impl(&dword_1DB56E000, v245, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support Wi-Fi, ignored storebag value of %d", buf, 0x2Cu);
        }
      }

      v248 = objc_opt_class();
      v249 = class_getName(v248);
      VRLogfilePrintWithTimestamp(a3, "%s: hardware does not support Wi-Fi, ignored storebag value of %d\n", v250, v251, v252, v253, v254, v255, v249);
    }
  }

  v256 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ss-bitrate-max-lte"];
  if (v256)
  {
    v257 = v256;
    if (rangeCheck(v256))
    {
      maxAllowedBitrateLTE = self->_maxAllowedBitrateLTE;
      v259 = VRTraceGetErrorLogLevelForModule();
      if (maxAllowedBitrateLTE)
      {
        if (v259 >= 7)
        {
          v260 = VRTraceErrorLogLevelToCSTR();
          v261 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v262 = objc_opt_class();
            v263 = class_getName(v262);
            *buf = 136316162;
            v342 = v260;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 458;
            v347 = 2080;
            Name = v263;
            v349 = 1024;
            v350 = v257;
            _os_log_impl(&dword_1DB56E000, v261, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding LTE ScreenShare bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v264 = objc_opt_class();
        v265 = class_getName(v264);
        VRLogfilePrintWithTimestamp(a3, "%s: overriding LTE ScreenShare bitrate with storebag value of %d\n", v266, v267, v268, v269, v270, v271, v265);
        self->_maxAllowedScreenShareBitrateLTE = v257;
      }

      else
      {
        if (v259 >= 7)
        {
          v272 = VRTraceErrorLogLevelToCSTR();
          v273 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v274 = objc_opt_class();
            v275 = class_getName(v274);
            *buf = 136316162;
            v342 = v272;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 461;
            v347 = 2080;
            Name = v275;
            v349 = 1024;
            v350 = v257;
            _os_log_impl(&dword_1DB56E000, v273, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support LTE, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v276 = objc_opt_class();
        v277 = class_getName(v276);
        VRLogfilePrintWithTimestamp(a3, "%s: hardware does not support LTE, ignored storebag value of %d\n", v278, v279, v280, v281, v282, v283, v277);
      }
    }
  }

  else
  {
    self->_maxAllowedScreenShareBitrateLTE = 510;
  }

  v284 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"rtc-ac-bitrate-max-lte"];
  if (v284)
  {
    v285 = v284;
    if (IsValidAudioBitrateRange(v284))
    {
      v286 = self->_maxAllowedBitrateLTE;
      v287 = VRTraceGetErrorLogLevelForModule();
      if (v286)
      {
        if (v287 >= 7)
        {
          v288 = VRTraceErrorLogLevelToCSTR();
          v289 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v290 = objc_opt_class();
            v291 = class_getName(v290);
            *buf = 136316162;
            v342 = v288;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 474;
            v347 = 2080;
            Name = v291;
            v349 = 1024;
            v350 = v285;
            _os_log_impl(&dword_1DB56E000, v289, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding LTE AppleCalling bitrate with storebag value of %d", buf, 0x2Cu);
          }
        }

        v292 = objc_opt_class();
        v293 = class_getName(v292);
        VRLogfilePrintWithTimestamp(a3, "%s: overriding LTE AppleCalling bitrate with storebag value of %d\n", v294, v295, v296, v297, v298, v299, v293);
        self->_maxAllowedAudioOnlyBitrateLTE = v285;
      }

      else
      {
        if (v287 >= 7)
        {
          v300 = VRTraceErrorLogLevelToCSTR();
          v301 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v302 = objc_opt_class();
            v303 = class_getName(v302);
            *buf = 136316162;
            v342 = v300;
            v343 = 2080;
            v344 = "[VCBitrateArbiter readStoreBagValues:]";
            v345 = 1024;
            v346 = 477;
            v347 = 2080;
            Name = v303;
            v349 = 1024;
            v350 = v285;
            _os_log_impl(&dword_1DB56E000, v301, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: hardware does not support LTE, ignored storebag value of %d", buf, 0x2Cu);
          }
        }

        v304 = objc_opt_class();
        v305 = class_getName(v304);
        VRLogfilePrintWithTimestamp(a3, "%s: hardware does not support LTE, ignored storebag value of %d\n", v306, v307, v308, v309, v310, v311, v305);
      }
    }
  }

  else
  {
    self->_maxAllowedAudioOnlyBitrateLTE = 40;
  }

  v312 = [(VCBitrateArbiter *)self storeBagBitrateForKey:@"gk-p2p-tcp-relay-bitrate-max"];
  self->_maxAllowedBitrateTCPRelay = v312;
  if (v312)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v313 = VRTraceErrorLogLevelToCSTR();
      v314 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v315 = objc_opt_class();
        v316 = class_getName(v315);
        maxAllowedBitrateTCPRelay = self->_maxAllowedBitrateTCPRelay;
        *buf = 136316162;
        v342 = v313;
        v343 = 2080;
        v344 = "[VCBitrateArbiter readStoreBagValues:]";
        v345 = 1024;
        v346 = 484;
        v347 = 2080;
        Name = v316;
        v349 = 1024;
        v350 = maxAllowedBitrateTCPRelay;
        _os_log_impl(&dword_1DB56E000, v314, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: overriding TCP Relay bitrate with storebag value of %d", buf, 0x2Cu);
      }
    }

    v318 = objc_opt_class();
    v319 = class_getName(v318);
    VRLogfilePrintWithTimestamp(a3, "%s: overriding TCP Relay bitrate with storebag value of %d\n", v320, v321, v322, v323, v324, v325, v319);
  }

  v326 = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-raise-u-one-bandwidth-limit-when-constrained" exceptionKey:@"vc-raise-u-one-bandwidth-limit-when-constrained-exceptions" userDefaultKey:@"raiseU1BandwidthLimitWhenConstrained" featureFlagDomain:"AVConference" featureFlagName:"RaiseU1BandwidthLimitWhenContrained"];
  if (v326)
  {
    v327 = 600;
  }

  else
  {
    v327 = 228;
  }

  self->_maxAllowedBitrateConstrained = v327;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v328 = VRTraceErrorLogLevelToCSTR();
    v329 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v330 = objc_opt_class();
      v331 = class_getName(v330);
      maxAllowedBitrateConstrained = self->_maxAllowedBitrateConstrained;
      *buf = 136316418;
      v342 = v328;
      v343 = 2080;
      v344 = "[VCBitrateArbiter readStoreBagValues:]";
      v345 = 1024;
      v346 = 489;
      v347 = 2080;
      Name = v331;
      v349 = 1024;
      v350 = maxAllowedBitrateConstrained;
      v351 = 1024;
      v352 = v326;
      _os_log_impl(&dword_1DB56E000, v329, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: max bitrate for constrained wifi set to %d, enabled setting=%d", buf, 0x32u);
    }
  }

  v333 = objc_opt_class();
  v334 = class_getName(v333);
  VRLogfilePrintWithTimestamp(a3, "%s: max bitrate for constrained wifi set to %d, enabled setting=%d\n", v335, v336, v337, v338, v339, v340, v334);
}

- (void)updateMaxAllowedBitrate:(unsigned int *)a3 key:(__CFString *)a4 type:(id)a5 isAudio:(BOOL)a6 carrierBundleBitrates:(__CFDictionary *)a7
{
  v7 = a6;
  v28 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a7, a4);
  if (Value)
  {
    valuePtr = -1431655766;
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if (v7)
    {
      if (!IsValidAudioBitrateRange(valuePtr))
      {
        return;
      }
    }

    else if (!rangeCheck(valuePtr))
    {
      return;
    }

    v11 = *a3;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v11)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v19 = v13;
          v20 = 2080;
          v21 = "[VCBitrateArbiter updateMaxAllowedBitrate:key:type:isAudio:carrierBundleBitrates:]";
          v22 = 1024;
          v23 = 505;
          v24 = 2112;
          v25 = a5;
          v26 = 1024;
          v27 = valuePtr;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCBitrateArbiter: overriding %@ bitrate with carrier bundle value of %d", buf, 0x2Cu);
        }
      }

      *a3 = valuePtr;
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v19 = v15;
        v20 = 2080;
        v21 = "[VCBitrateArbiter updateMaxAllowedBitrate:key:type:isAudio:carrierBundleBitrates:]";
        v22 = 1024;
        v23 = 508;
        v24 = 2112;
        v25 = a5;
        v26 = 1024;
        v27 = valuePtr;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCBitrateArbiter: hardware does not support %@, ignored carrier bundle value of %d", buf, 0x2Cu);
      }
    }
  }
}

- (void)readCarrierBundleValues
{
  v15 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (VCCarrierBundle_QueryCarrierBundleValueForKey(@"FaceTimeOverCellular", &cf))
  {
    v3 = cf == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v10 = v4;
        v11 = 2080;
        v12 = "[VCBitrateArbiter readCarrierBundleValues]";
        v13 = 1024;
        v14 = 544;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCBitrateArbiter: no carrier bundle values found", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      v7 = cf;
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedBitrate2G key:@"MaxBitrate2G" type:@"2G" isAudio:0 carrierBundleBitrates:cf];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedAudioOnlyBitrate2G key:@"MaxAudioOnlyBitrate2G" type:@"2G" isAudio:1 carrierBundleBitrates:v7];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedBitrate3G key:@"MaxBitrate3G" type:@"3G" isAudio:0 carrierBundleBitrates:v7];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedAudioOnlyBitrate3G key:@"MaxAudioOnlyBitrate3G" type:@"3G" isAudio:1 carrierBundleBitrates:v7];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedBitrateLTE key:@"MaxBitrateLTE" type:@"LTE" isAudio:0 carrierBundleBitrates:v7];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedAudioOnlyBitrateLTE key:@"MaxAudioOnlyBitrateLTE" type:@"LTE" isAudio:1 carrierBundleBitrates:v7];
      [(VCBitrateArbiter *)self updateMaxAllowedBitrate:&self->_maxAllowedBitrateHighRat key:@"MaxBitrate5G" type:@"5G" isAudio:0 carrierBundleBitrates:v7];
    }

    CFRelease(cf);
  }
}

- (unsigned)maxAllowedScreenShareCellularBitrate
{
  maxAllowedScreenShareBitrate2G = self->_maxAllowedScreenShareBitrate2G;
  if (maxAllowedScreenShareBitrate2G <= self->_maxAllowedScreenShareBitrate3G)
  {
    maxAllowedScreenShareBitrate2G = self->_maxAllowedScreenShareBitrate3G;
  }

  if (maxAllowedScreenShareBitrate2G <= self->_maxAllowedScreenShareBitrateLTE)
  {
    return self->_maxAllowedScreenShareBitrateLTE;
  }

  else
  {
    return maxAllowedScreenShareBitrate2G;
  }
}

- (unsigned)maxAllowedBitrateForConnectionType:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCBitrateArbiter maxAllowedBitrateForConnectionType:]";
      v12 = 1024;
      v13 = 563;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCBitrateArbiter: received connectionType %d", &v8, 0x22u);
    }
  }

  if (a3 > 3)
  {
    if ((a3 - 4) < 2)
    {
      return 40000000;
    }

    if (a3 == 6)
    {
      return self->_maxAllowedBitrateHighRat;
    }

    if (a3 == 7)
    {
      return 60000000;
    }

    return 100;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      return self->_maxAllowedBitrate2G;
    }

    if (a3 == 1)
    {
      return self->_maxAllowedBitrate3G;
    }

    return 100;
  }

  if (a3 == 2)
  {
    return self->_maxAllowedBitrateLTE;
  }

  else
  {
    return self->_maxAllowedBitrateWifi;
  }
}

- (unsigned)maxAllowedBitrateForVCConnection:(id)a3 forLocalInterface:(BOOL)a4 encodeRule:(id)a5
{
  v6 = a4;
  v38 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = [a3 localConnectionType];
  }

  else
  {
    v9 = [a3 remoteConnectionType];
  }

  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v6)
    {
      IsLocalExpensive = VCConnection_IsLocalExpensive(a3);
      IsLocalConstrained = VCConnection_IsLocalConstrained(a3);
    }

    else
    {
      IsLocalExpensive = VCConnection_IsRemoteExpensive(a3);
      IsLocalConstrained = VCConnection_IsRemoteConstrained(a3);
    }

    v13 = IsLocalConstrained;
  }

  else
  {
    v13 = 0;
    IsLocalExpensive = 1;
  }

  maxAllowedBitrate3G = 100;
  if (v10 <= 3)
  {
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          maxAllowedBitrate3G = self->_maxAllowedBitrate3G;
        }
      }

      else
      {
        maxAllowedBitrate3G = self->_maxAllowedBitrate2G;
      }

      goto LABEL_35;
    }

    if (v10 != 2)
    {
      if (v13)
      {
        maxAllowedBitrate3G = self->_maxAllowedBitrateConstrained;
      }

      else
      {
        maxAllowedBitrate3G = self->_maxAllowedBitrateWifi;
      }

      goto LABEL_35;
    }

    goto LABEL_23;
  }

  if (v10 <= 5)
  {
    maxAllowedBitrate3G = 40000000;
    goto LABEL_35;
  }

  if (v10 == 6)
  {
LABEL_23:
    if ((IsLocalExpensive & 1) != 0 || (maxAllowedBitrate3G = self->_maxAllowedBitrateHighRat) == 0)
    {
      maxAllowedBitrate3G = self->_maxAllowedBitrateLTE;
    }

    if (v13)
    {
      if (self->_maxAllowedBitrateConstrained >= maxAllowedBitrate3G)
      {
        maxAllowedBitrateConstrained = maxAllowedBitrate3G;
      }

      else
      {
        maxAllowedBitrateConstrained = self->_maxAllowedBitrateConstrained;
      }

      if (maxAllowedBitrate3G)
      {
        maxAllowedBitrate3G = maxAllowedBitrateConstrained;
      }

      else
      {
        maxAllowedBitrate3G = self->_maxAllowedBitrateConstrained;
      }
    }

    goto LABEL_35;
  }

  if (v10 == 7)
  {
    maxAllowedBitrate3G = 60000000;
  }

LABEL_35:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v18 = "Local";
      }

      else
      {
        v18 = "Remote";
      }

      v20 = 136317186;
      v21 = v16;
      v22 = 2080;
      v23 = "[VCBitrateArbiter maxAllowedBitrateForVCConnection:forLocalInterface:encodeRule:]";
      v24 = 1024;
      v25 = 665;
      v26 = 1024;
      v27 = maxAllowedBitrate3G;
      v28 = 2080;
      v29 = v18;
      v30 = 1024;
      v31 = v10;
      v32 = 1024;
      v33 = v13;
      v34 = 1024;
      v35 = IsLocalExpensive;
      v36 = 1024;
      v37 = [a5 isVideoFullHD];
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Bitrate = %d. received connection for %s, connectionType = %d, constraint %d, expensive %d, videoFullHD %d", &v20, 0x44u);
    }
  }

  return maxAllowedBitrate3G;
}

- (unsigned)maxAllowedScreenShareBitrateForConnection:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCBitrateArbiter maxAllowedScreenShareBitrateForConnection:]";
      v12 = 1024;
      v13 = 671;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received connection type %d", &v8, 0x22u);
    }
  }

  if (a3 <= 6 && ((0x4Fu >> a3) & 1) != 0)
  {
    return *(&self->super.isa + qword_1DBD50E40[a3]);
  }

  else
  {
    return 510;
  }
}

- (unsigned)maxAllowedImmersiveVideoBitrateForConnectionType:(int)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 == 7)
  {
    v4 = 100000000;
  }

  else
  {
    v4 = 20000000;
  }

  if (a3 == 3)
  {
    v5 = 75000000;
  }

  else
  {
    v5 = v4;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCBitrateArbiter maxAllowedImmersiveVideoBitrateForConnectionType:]";
      v13 = 1024;
      v14 = 706;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = a3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Immersive Video maxBitrate=%u for connectionType %d", &v9, 0x28u);
    }
  }

  return v5;
}

- (unsigned)maxAllowedAudioOnlyBitrateForConnection:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:]";
      v12 = 1024;
      v13 = 711;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received connection type %d", &v8, 0x22u);
    }
  }

  if (a3 <= 6 && ((0x4Fu >> a3) & 1) != 0)
  {
    return *(&self->super.isa + qword_1DBD50E78[a3]);
  }

  else
  {
    return 40;
  }
}

- (id)maxAllowedBitrateRuleForConnection:(int)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = v5;
      v21 = 2080;
      v22 = "[VCBitrateArbiter maxAllowedBitrateRuleForConnection:]";
      v23 = 1024;
      v24 = 735;
      v25 = 1024;
      v26 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received connection type %d", buf, 0x22u);
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  supportedBitrateRules = self->supportedBitrateRules;
  v8 = [(NSMutableArray *)supportedBitrateRules countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v16;
LABEL_6:
  v11 = 0;
  while (1)
  {
    if (*v16 != v10)
    {
      objc_enumerationMutation(supportedBitrateRules);
    }

    v12 = *(*(&v15 + 1) + 8 * v11);
    if ([v12 connectionType] == a3)
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = [(NSMutableArray *)supportedBitrateRules countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v9)
      {
        goto LABEL_6;
      }

      return 0;
    }
  }
}

- (unsigned)maxAllowedBitrateForVCConnection:(id)a3 forLocalInterface:(BOOL)a4 arbiterMode:(unsigned __int8)a5 encodeRule:(id)a6
{
  v7 = a5;
  v8 = a4;
  v28 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v11 = [a3 localConnectionType];
  }

  else
  {
    v11 = [a3 remoteConnectionType];
  }

  if (v7 > 3)
  {
    if (v7 <= 6)
    {
      if ((v7 - 4) >= 2)
      {
        if (v7 == 6)
        {
          return 20000000;
        }

        goto LABEL_27;
      }

LABEL_12:

      return [(VCBitrateArbiter *)self maxAllowedBitrateForVCConnection:a3 forLocalInterface:v8 encodeRule:a6];
    }

    if (v7 != 7)
    {
      if (v7 == 8)
      {

        return [(VCBitrateArbiter *)self maxAllowedImmersiveVideoBitrateForConnectionType:v11];
      }

      goto LABEL_27;
    }

LABEL_24:

    return [(VCBitrateArbiter *)self maxAllowedAudioOnlyBitrateForConnection:v11];
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {

      return [(VCBitrateArbiter *)self maxAllowedScreenShareBitrateForConnection:v11];
    }

    goto LABEL_24;
  }

  if (!v7)
  {
    goto LABEL_24;
  }

  if (v7 == 1)
  {
    goto LABEL_12;
  }

LABEL_27:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      [VCBitrateArbiter maxAllowedBitrateForVCConnection:forLocalInterface:arbiterMode:encodeRule:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCBitrateArbiter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v16 = 136316418;
      v17 = v14;
      v18 = 2080;
      v19 = "[VCBitrateArbiter maxAllowedBitrateForVCConnection:forLocalInterface:arbiterMode:encodeRule:]";
      v20 = 1024;
      v21 = 771;
      v22 = 2112;
      v23 = v13;
      v24 = 2048;
      v25 = self;
      v26 = 1024;
      v27 = v7;
      _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected arbiterMode=%hhu", &v16, 0x36u);
    }
  }

  return 0;
}

- (unsigned)maxAllowedBitrateForConnectionType:(int)a3 arbiterMode:(unsigned __int8)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  if (a4 > 3)
  {
    if (a4 > 6)
    {
      if (a4 == 7)
      {
        return 6000000;
      }

      if (a4 == 8)
      {

        return [(VCBitrateArbiter *)self maxAllowedImmersiveVideoBitrateForConnectionType:*&a3];
      }

      goto LABEL_25;
    }

    if ((a4 - 4) >= 2)
    {
      if (a4 == 6)
      {
        return 20000000;
      }

      goto LABEL_25;
    }

LABEL_9:

    return [(VCBitrateArbiter *)self maxAllowedBitrateForConnectionType:*&a3];
  }

  if (a4 > 1)
  {
    if (a4 != 2)
    {

      return [(VCBitrateArbiter *)self maxAllowedScreenShareBitrateForConnection:*&a3];
    }

LABEL_21:

    return [(VCBitrateArbiter *)self maxAllowedAudioOnlyBitrateForConnection:*&a3];
  }

  if (!a4)
  {
    goto LABEL_21;
  }

  if (a4 == 1)
  {
    goto LABEL_9;
  }

LABEL_25:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      [VCBitrateArbiter maxAllowedBitrateForConnectionType:arbiterMode:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCBitrateArbiter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v10 = 136316418;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCBitrateArbiter maxAllowedBitrateForConnectionType:arbiterMode:]";
      v14 = 1024;
      v15 = 795;
      v16 = 2112;
      v17 = v7;
      v18 = 2048;
      v19 = self;
      v20 = 1024;
      v21 = v4;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected arbiterMode=%hhu", &v10, 0x36u);
    }
  }

  return 0;
}

+ (void)updateMaxAllowedBitratePerConnection:(unsigned int *)a3 connectionType:(int)a4 negotiatedSettings:(id)a5
{
  v6 = [a5 maxBandwidthWithArbiterMode:1 connectionType:*&a4];
  if (v6)
  {
    *a3 = v6;
  }
}

- (void)updateNegotiatedSettings:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  [VCBitrateArbiter updateMaxAllowedBitratePerConnection:&self->_maxAllowedBitrate2G connectionType:0 negotiatedSettings:a3];
  [VCBitrateArbiter updateMaxAllowedBitratePerConnection:&self->_maxAllowedBitrate3G connectionType:1 negotiatedSettings:a3];
  [VCBitrateArbiter updateMaxAllowedBitratePerConnection:&self->_maxAllowedBitrateLTE connectionType:2 negotiatedSettings:a3];
  [VCBitrateArbiter updateMaxAllowedBitratePerConnection:&self->_maxAllowedBitrateHighRat connectionType:6 negotiatedSettings:a3];
  [VCBitrateArbiter updateMaxAllowedBitratePerConnection:&self->_maxAllowedBitrateWifi connectionType:3 negotiatedSettings:a3];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      maxAllowedBitrate2G = self->_maxAllowedBitrate2G;
      maxAllowedBitrate3G = self->_maxAllowedBitrate3G;
      maxAllowedBitrateLTE = self->_maxAllowedBitrateLTE;
      maxAllowedBitrateHighRat = self->_maxAllowedBitrateHighRat;
      maxAllowedBitrateWifi = self->_maxAllowedBitrateWifi;
      v12 = 136316930;
      v13 = v5;
      v14 = 2080;
      v15 = "[VCBitrateArbiter updateNegotiatedSettings:]";
      v16 = 1024;
      v17 = 815;
      v18 = 1024;
      v19 = maxAllowedBitrate2G;
      v20 = 1024;
      v21 = maxAllowedBitrate3G;
      v22 = 1024;
      v23 = maxAllowedBitrateLTE;
      v24 = 1024;
      v25 = maxAllowedBitrateHighRat;
      v26 = 1024;
      v27 = maxAllowedBitrateWifi;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _maxAllowedBitrate2G = %d,  _maxAllowedBitrate3G = %d, _maxAllowedBitrateLTE = %d, _maxAllowedBitrateHighRat = %d, _maxAllowedBitrateWifi = %d", &v12, 0x3Au);
    }
  }
}

- (void)maxAllowedBitrateForVCConnection:forLocalInterface:arbiterMode:encodeRule:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected arbiterMode=%hhu", v2, v3, v4, v5);
}

- (void)maxAllowedBitrateForConnectionType:arbiterMode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected arbiterMode=%hhu", v2, v3, v4, v5);
}

@end