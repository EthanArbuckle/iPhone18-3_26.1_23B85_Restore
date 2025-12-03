@interface VCServerBag
+ (BOOL)verifyRequiredKeys:(id *)keys;
+ (BOOL)verifyRequiredKeys:(id)keys withError:(id *)error;
+ (BOOL)verifyRequiredVoiceChatKeys:(id *)keys;
+ (id)sharedInstance;
+ (void)checkKeysAgainstHardcodedPrefs:(id)prefs;
+ (void)pullStoreBagKeys;
+ (void)retrieveBag;
- (VCServerBag)init;
- (void)waitForBagLoad;
@end

@implementation VCServerBag

- (VCServerBag)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCServerBag;
  v2 = [(VCServerBag *)&v4 init];
  pthread_mutex_init(&v2->isLoadedMutex, 0);
  pthread_cond_init(&v2->isLoadedCondition, 0);
  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_18 != -1)
  {
    +[VCServerBag sharedInstance];
  }

  return sharedInstance_bag;
}

VCServerBag *__29__VCServerBag_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCServerBag);
  sharedInstance_bag = result;
  return result;
}

- (void)waitForBagLoad
{
  v20 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A53F0] = [MEMORY[0x1E69A53F0] sharedInstance];
  pthread_mutex_lock(&self->isLoadedMutex);
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v13.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  if (!self->isLoaded)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = v4;
        v16 = 2080;
        v17 = "[VCServerBag waitForBagLoad]";
        v18 = 1024;
        v19 = 50;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Waiting for bag load.", buf, 0x1Cu);
      }
    }

    isLoaded = [mEMORY[0x1E69A53F0] isLoaded];
    self->isLoaded = isLoaded;
    if ((isLoaded & 1) == 0)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __29__VCServerBag_waitForBagLoad__block_invoke;
      v10 = &unk_1E85F37F0;
      selfCopy = self;
      v12 = mEMORY[0x1E69A53F0];
      if (waitForBagLoad_onceToken != -1)
      {
        dispatch_once(&waitForBagLoad_onceToken, &v7);
      }

      [mEMORY[0x1E69A53F0] startBagLoad];
      v13 = xmmword_1DBD50D20;
      pthread_cond_timedwait_relative_np(&self->isLoadedCondition, &self->isLoadedMutex, &v13);
    }
  }

  pthread_mutex_unlock(&self->isLoadedMutex);
}

uint64_t __29__VCServerBag_waitForBagLoad__block_invoke(uint64_t a1)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69A50A8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__VCServerBag_waitForBagLoad__block_invoke_2;
  v6[3] = &unk_1E85F9848;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  result = [v2 addObserverForName:v3 object:v4 queue:0 usingBlock:v6];
  *(*(a1 + 32) + 128) = result;
  return result;
}

uint64_t __29__VCServerBag_waitForBagLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v6 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v6 = "<nil>";
      }

      v9 = 136315906;
      v10 = v4;
      v11 = 2080;
      v12 = "[VCServerBag waitForBagLoad]_block_invoke_2";
      v13 = 1024;
      v14 = 68;
      v15 = 2080;
      v16 = v6;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Bag Load Notification came in %s", &v9, 0x26u);
    }
  }

  pthread_mutex_lock((*(a1 + 32) + 56));
  *(*(a1 + 32) + 120) = 1;
  v7 = *(a1 + 32);
  if (*(v7 + 128))
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v7 = *(a1 + 32);
  }

  *(v7 + 128) = 0;
  pthread_cond_broadcast((*(a1 + 32) + 8));
  return pthread_mutex_unlock((*(a1 + 32) + 56));
}

+ (void)pullStoreBagKeys
{
  v81[58] = *MEMORY[0x1E69E9840];
  v41 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [+[VCServerBag sharedInstance](VCServerBag waitForBagLoad];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v81[0] = @"gk-cdx";
  v81[1] = @"gk-commnat-main0";
  v81[2] = @"gk-commnat-main1";
  v81[3] = @"gk-commnat-cohort";
  v81[4] = @"gk-commnat-main0-name";
  v81[5] = @"gk-commnat-main1-name";
  v81[6] = @"gk-commnat-cohort-name";
  v81[7] = @"gk-p2p-ice-timeout";
  v81[8] = @"gk-p2p-nat-type-timeout";
  v81[9] = @"gk-p2p-blob-size-max";
  v81[10] = @"gk-p2p-relay-bitrate-max";
  v81[11] = @"gk-p2p-tcp-relay-bitrate-max";
  v81[12] = @"gk-p2p-pre-relay-timeout";
  v81[13] = @"gk-p2p-remote-packets-timeout";
  v81[14] = @"gk-p2p-network-conditions-timeout";
  v81[15] = @"gk-p2p-video-throttling-timeout";
  v81[16] = @"gk-p2p-startup-timeout";
  v81[17] = @"gk-p2p-tcp-check-url";
  v81[18] = @"gk-p2p-ssl-check-url";
  v81[19] = @"gk-p2p-bitrate-max-2g";
  v81[20] = @"gk-p2p-bitrate-max-3g";
  v81[21] = @"gk-p2p-bitrate-max-lte";
  v81[22] = @"gk-p2p-bitrate-max-lte-v2";
  v81[23] = @"gk-p2p-bitrate-max-5g";
  v81[24] = @"gk-min-jitter-queue-size-5g";
  v81[25] = @"gk-p2p-bitrate-max-wifi";
  v81[26] = @"gk-p2p-video-degraded-threshold";
  v81[27] = @"vc-enable-irat-recommendation";
  v81[28] = @"vc-rate-controller-type";
  v81[29] = @"vc-decryption-timeout-interval";
  v81[30] = @"vc-decryption-mkm-recovery-interval";
  v81[31] = @"vc-new-session-joining-interval";
  v81[32] = @"vc-remote-media-stall-timeout";
  v81[33] = @"vc-no-remote-duplication-threshold-fast";
  v81[34] = @"vc-viewpoint-correction-enabled";
  v81[35] = @"vc-facetime-photos-use-best-videorule";
  v81[36] = @"vc-facetime-jb-high-start";
  v81[37] = @"vc-facetime-jitter-buffer-mode";
  v81[38] = @"vc-facetime-30-fps-support";
  v81[39] = @"vc-primary-conn-health-allowed-delay";
  v81[40] = @"gk-p2p-video-near-degraded-threshold";
  v81[41] = @"gk-p2p-media-degraded-threshold";
  v81[42] = @"vc-wrm-pending-bitrate-cap-delta";
  v81[43] = @"vc-duplication-media-driven-duplication-enabled";
  v81[44] = @"vc-ids-link-suggestion-enabled";
  v81[45] = @"vc-core-motion-detection-enabled";
  v81[46] = @"vc-send-feedback-controller-report";
  v81[47] = @"vc-captions-enabled";
  v81[48] = @"vc-motion-based-duplication-enabled";
  v81[49] = @"vc-force-relay-when-screen-enabled";
  v81[50] = @"vc-server-should-use-second-aggregator";
  v81[51] = @"vc-u-plus-one-auth-tag-enabled";
  v81[52] = @"vc-prefer-wired-over-wifi";
  v81[53] = @"vc-u-plus-one-pqc-enabled";
  v81[54] = @"vc-p2p-encryption-enabled";
  v81[55] = @"vc-rtc-sampling-threshold";
  v81[56] = @"vc-reserved-experiment-space-threshold";
  v81[57] = @"vc-disallow-alternate-connection-for-rtx-support-when-video-degraded";
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:58];
  v80[0] = @"rtc-ac-bitrate-max-2g";
  v80[1] = @"rtc-ac-bitrate-max-3g";
  v80[2] = @"rtc-ac-bitrate-max-lte";
  v80[3] = @"rtc-ac-relay-bitrate-max";
  v80[4] = @"rtc-ac-tcp-relay-bitrate-max";
  v80[5] = @"rtc-ss-bitrate-max-2g";
  v80[6] = @"rtc-ss-bitrate-max-3g";
  v80[7] = @"rtc-ss-bitrate-max-lte";
  v80[8] = @"vc-enable-evs-audio-codec";
  v80[9] = @"vc-enable-red-audio";
  v80[10] = @"vc-red-state-value-A";
  v80[11] = @"vc-max-bitrate-2g-uplink";
  v80[12] = @"vc-max-bitrate-3g-uplink";
  v80[13] = @"vc-max-bitrate-lte-uplink";
  v80[14] = @"vc-max-bitrate-nonexpensive-uplink";
  v80[15] = @"vc-max-bitrate-wifi-uplink";
  v80[16] = @"vc-max-bitrate-2g-downlink";
  v80[17] = @"vc-max-bitrate-3g-downlink";
  v80[18] = @"vc-max-bitrate-lte-downlink";
  v80[19] = @"vc-max-bitrate-nonexpensive-downlink";
  v80[20] = @"vc-max-bitrate-wifi-downlink";
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:21];
  v79[0] = @"vc-adaptive-learning-enabled";
  v79[1] = @"vc-short-term-history-length";
  v79[2] = @"vc-long-term-history-length";
  v79[3] = @"vc-adaptive-learning-A";
  v79[4] = @"vc-adjustment-factor-A";
  v79[5] = @"vc-short-term-value-weight-A";
  v79[6] = @"vc-long-term-value-weight-A";
  v79[7] = @"vc-adaptive-learning-B";
  v79[8] = @"vc-adjustment-factor-B";
  v79[9] = @"vc-short-term-value-weight-B";
  v79[10] = @"vc-long-term-value-weight-B";
  v79[11] = @"vc-adjustment-factor-C";
  v79[12] = @"vc-short-term-value-weight-C";
  v79[13] = @"vc-long-term-value-weight-C";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:14];
  v78[0] = @"vc-prefer-relay-over-p2p-threshold";
  v78[1] = @"vc-always-on-audio-redundancy-enable-threshold";
  v78[2] = @"vc-high-fec-enable-threshold";
  v78[3] = @"vc-low-fps-video-enable-threshold";
  v78[4] = @"vc-vplr-fec-enable-threshold";
  v78[5] = @"vc-video-redundancy-percentage-max";
  v78[6] = @"vc-ab-testing-use-video-jitter-for-video-playout";
  v78[7] = @"vc-fast-media-duplication-enable-threshold";
  v78[8] = @"vc-iRAT-rtp-enable-threshold";
  v78[9] = @"vc-pre-warm-cell-enable-threshold";
  v78[10] = @"vc-duplicate-important-pkts-enable-threshold";
  v78[11] = @"vc-allow-bursty-loss-ramp-down-enable-threshold";
  v78[12] = @"vc-hevc-wifi-tiers-enable-threshold";
  v78[13] = @"vc-viewpoint-correction-enable-threshold";
  v78[14] = @"vc-heif-hevc-live-photos-enable-threshold";
  v78[15] = @"vc-wifi-low-tier-redundancy-enable-threshold";
  v78[16] = @"vc-cellular-low-tier-redundancy-enable-threshold";
  v78[17] = @"vc-iRAT-metrics-enable-threshold";
  v78[18] = @"vc-fec-header-v1-enable-threshold";
  v78[19] = @"vc-updated-AFRC-header-enable-threshold";
  v78[20] = @"vc-secure-messaging-enable-threshold";
  v78[21] = @"vc-disable-SIP-enable-threshold";
  v78[22] = @"vc-wifi-assist-duplication-enable-threshold";
  v78[23] = @"vc-wifi-assist-budget-status-enable-threshold";
  v78[24] = @"vc-wifi-assist-status-bar-enable-threshold";
  v78[25] = @"vc-low-network-mode-enable-threshold";
  v78[26] = @"vc-duplication-enhancement-enable-threshold";
  v78[27] = @"vc-video-jb-enable-threshold-v2";
  v78[28] = @"vc-iRAT-duplication-enable-threshold";
  v78[29] = @"vc-wrm-rssi-threshold-enable-threshold";
  v78[30] = @"vc-wrm-rssi-threshold-distribution";
  v78[31] = @"vc-media-driven-duplication-enable-threshold";
  v78[32] = @"vc-ab-test-master-local-switches";
  v78[33] = @"vc-ab-test-audio-enhancement-feature-combinations";
  v78[34] = @"vc-ab-test-video-enhancement-feature-combinations";
  v78[35] = @"vc-ab-test-network-enhancement-feature-combinations";
  v78[36] = @"vc-ab-test-rate-control-enhancement-feature-combinations";
  v78[37] = @"vc-ab-test-media-duplication-enhancement-feature-combinations";
  v78[38] = @"vc-ab-testing-state";
  v78[39] = @"vc-ab-testing-use-rtt-for-fir-throttling";
  v78[40] = @"vc-ab-test-enable-max-camera-bitrate-video-quality-v4-threshold";
  v78[41] = @"vc-limit-multiway-bandwidth-when-constrained";
  v78[42] = @"vc-ab-testing-detect-inactive-audio-frames-AACELD";
  v78[43] = @"vc-ab-testing-use-audio-codec-ACC24-for-U1";
  v78[44] = @"vc-ab-testing-use-audio-codec-ACC24-for-GFT";
  v78[45] = @"vc-ab-testing-enable-ACC24-fixed-bitrate-mode";
  v78[46] = @"vc-ab-test-thermal-light-mitigations-enabled";
  v78[47] = @"vc-raise-u-one-bandwidth-limit-when-constrained";
  v78[48] = @"vc-ab-testing-higher-audio-RED-cutover";
  v78[49] = @"vc-ab-testing-low-bandwidth-single-packet-duplication";
  v78[50] = @"vc-ab-testing-enable-late-key-frame-detection";
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:51];
  v77[0] = @"vc-link-probing-capability-version";
  v77[1] = @"vc-link-probing-feature-threshold";
  v77[2] = @"vc-link-probing-interval";
  v77[3] = @"vc-link-probing-timeout";
  v77[4] = @"vc-link-probing-query-results-interval";
  v77[5] = @"vc-link-probing-exponential-moving-mean-factor";
  v77[6] = @"vc-link-probing-envelope-attack-factor";
  v77[7] = @"vc-link-probing-envelope-decay-factor";
  v77[8] = @"vc-link-probing-connection-lockdown-period";
  v77[9] = @"vc-link-probing-plr-buckets";
  v77[10] = @"vc-link-probing-duplication-wait-timeout";
  v77[11] = @"vc-link-probing-identical-query-result-max";
  v77[12] = @"vc-link-probing-lockdown-period";
  v77[13] = @"vc-link-probing-qr-stat-request-frequency";
  v77[14] = @"vc-link-probing-qr-stat-request-max-count";
  v77[15] = @"vc-link-probing-qr-stat-request-max-rtt";
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:16];
  v76[0] = @"vc-network-condition-detection-enabled";
  v76[1] = @"vc-bad-wifi-channel-quality-score-threshold";
  v76[2] = @"vc-bad-cell-signal-strength-bars-threshold-factor";
  v76[3] = @"vc-bad-cell-signal-strength-bars-threshold-offset";
  v76[4] = @"vc-wifi-channel-quality-score-envelope-attack-factor";
  v76[5] = @"vc-wifi-channel-quality-score-envelope-decay-factor";
  v76[6] = @"vc-cell-signal-strength-bars-envelope-attack-factor";
  v76[7] = @"vc-cell-signal-strength-bars-envelope-decay-factor";
  v76[8] = @"vc-network-backhaul-detection-trigger-threshold";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:9];
  v37 = [VCRateControlServerBag keysWithMode:1];
  v36 = [VCRateControlServerBag keysWithMode:6];
  v75[0] = @"vc-mediaQueue-schedule-no-wait";
  v75[1] = @"vc-mediaQueue-min-bitrate-no-throttling";
  v75[2] = @"vc-mediaQueue-min-bitrate-no-throttling-3d";
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
  v74[0] = @"vc-cellular-expiration-time-audio";
  v74[1] = @"vc-cellular-expiration-time-video";
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  v73[0] = @"vc-fec-vectorization-enabled";
  v73[1] = @"vc-fec-generator-enabled";
  v73[2] = @"vc-fec-feedback-version";
  v73[3] = @"vc-fec-feedback-analyzer-level-match-percentile";
  v73[4] = @"vc-fec-feedback-analyzer-buffer-max-length";
  v73[5] = @"vc-fec-feedback-analyzer-report-min-period";
  v73[6] = @"vc-fec-feedback-analyzer-vplr-window-size";
  v73[7] = @"vc-fec-feedback-analyzer-interpolation-threshold";
  v73[8] = @"vc-frame-based-fec-enabled";
  v73[9] = @"vc-fec-feedback-analyzer-camera-fec-level-cap-bitrate";
  v73[10] = @"vc-fec-feedback-analyzer-screen-fec-level-cap-bitrate";
  v73[11] = @"vc-red-plr-threshold-for-bdatv2";
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:12];
  v72[0] = @"vc-video-priority-enabled";
  v72[1] = @"vc-low-quality-audio-stream-on-demand";
  v72[2] = @"vc-low-quality-video-stream-on-demand";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
  v71 = @"vc-nw-connection-monitor-enabled";
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
  v70[0] = @"vc-video-jitter-buffer-for-video-playout";
  v70[1] = @"vc-video-player-enable-loose-sync-for-facetime";
  v70[2] = @"vc-video-player-enable-reference-frame-for-facetime";
  v70[3] = @"vc-video-enable-late-frame-recovery";
  v70[4] = @"vc-video-transmitter-minimum-key-frame-generation-interval-for-facetime";
  v70[5] = @"vc-video-receiver-deferred-assembly-offset";
  v70[6] = @"vc-middle-tier-ml-enhance-disabled";
  v70[7] = @"vc-u-plus-one-four-times-ml-scaler-disabled";
  v70[8] = @"vc-low-tier-frc-for-gft";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:9];
  v69[0] = @"vc-server-video-packet-retransmission-enabled";
  v69[1] = @"vc-nack-generator-population-percentage-with-additional-delay-budget";
  v69[2] = @"vc-nack-generator-nack-bit-rate-limiting-max-ratio";
  v69[3] = @"vc-nack-generator-seq-num-aging-time";
  v69[4] = @"vc-nack-generator-nack-throttling-plr-buckets";
  v69[5] = @"vc-nack-generator-nack-throttling-factor-buckets";
  v69[6] = @"vc-nack-generator-storebag-config-version";
  v69[7] = @"vc-nack-generator-nack-generation-max-plr";
  v69[8] = @"vc-nack-generator-nack-generation-max-rtt";
  v69[9] = @"vc-nack-generator-rtt-for-rtx-fulfillment-wait-time";
  v69[10] = @"vc-nack-generator-rtt-for-rtx-fulfillment-Multiplier";
  v69[11] = @"vc-nack-generator-dynamic-nack-tuning-enabled";
  v69[12] = @"vc-nack-generator-rtx-incomplete-frame-buffer-duration-multiplier";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:13];
  v68[0] = @"vc-rtcp-psfb-for-loss-feedback";
  v68[1] = @"vc-rtcp-psfb-for-ltr-ack";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
  v67 = @"vc-screen-capture-private-content-capture-disabled";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  v66[0] = @"vc-reporting-audio-connection-time-symptom-threshold";
  v66[1] = @"vc-reporting-audio-erasure-percentage-symptom-threshold";
  v66[2] = @"vc-reporting-poor-connection-percentage-symptom-threshold";
  v66[3] = @"vc-reporting-video-connection-time-symptom-threshold";
  v66[4] = @"vc-reporting-video-stall-percentage-symptom-threshold";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:5];
  v65[0] = @"vc-enhanced-jb-adaptations-fta";
  v65[1] = @"vc-enhanced-jb-adaptations-ftv";
  v65[2] = @"vc-enable-jb-latency-sensitive-mode";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
  v64[0] = @"vc-out-of-process-video-decoding";
  v64[1] = @"vc-out-of-process-audio-decoding";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
  v63[0] = @"vc-experiment-nack-generation";
  v63[1] = @"vc-experiment-fec-frame-based";
  v63[2] = @"vc-experiment-low-bandwidth-optimization";
  v63[3] = @"vc-experiment-always-report-network-statistics";
  v63[4] = @"vc-experiment-fast-lqm-reporting-threshold";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:5];
  v62[0] = @"vc-vcrcml-disable-on-disengagement";
  v62[1] = @"vc-vcrcml-disable-enrollment";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  [v2 addObjectsFromArray:v45];
  [v2 addObjectsFromArray:v43];
  [v2 addObjectsFromArray:v42];
  [v2 addObjectsFromArray:v40];
  [v2 addObjectsFromArray:v37];
  [v2 addObjectsFromArray:v36];
  [v2 addObjectsFromArray:v35];
  [v2 addObjectsFromArray:v34];
  [v2 addObjectsFromArray:v39];
  [v2 addObjectsFromArray:v33];
  [v2 addObjectsFromArray:v32];
  [v2 addObjectsFromArray:v31];
  [v2 addObjectsFromArray:v3];
  [v2 addObjectsFromArray:v4];
  [v2 addObjectsFromArray:v5];
  [v2 addObjectsFromArray:v38];
  [v2 addObjectsFromArray:v6];
  [v2 addObjectsFromArray:v7];
  [v2 addObjectsFromArray:v8];
  [v2 addObjectsFromArray:v9];
  [v2 addObjectsFromArray:v10];
  [v2 addObjectsFromArray:v11];
  v12 = v2;
  [v2 addObject:@"vc-enable-hevc-v2"];
  v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = +[GKSConnectivitySettings getAllSettings];
  mEMORY[0x1E69A53F0] = [MEMORY[0x1E69A53F0] sharedInstance];
  v46 = mEMORY[0x1E69A53F0];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (mEMORY[0x1E69A53F0])
      {
        v17 = [objc_msgSend(mEMORY[0x1E69A53F0] "description")];
        if (v13)
        {
LABEL_5:
          v18 = [objc_msgSend(v13 "description")];
LABEL_8:
          *buf = 136316162;
          v53 = v15;
          v54 = 2080;
          v55 = "+[VCServerBag pullStoreBagKeys]";
          v56 = 1024;
          v57 = 187;
          v58 = 2080;
          v59 = v17;
          v60 = 2080;
          v61 = v18;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Pulling bag to see if we need anything:%s, currentSettings = %s", buf, 0x30u);
          mEMORY[0x1E69A53F0] = v46;
          goto LABEL_9;
        }
      }

      else
      {
        v17 = "<nil>";
        if (v13)
        {
          goto LABEL_5;
        }
      }

      v18 = "<nil>";
      goto LABEL_8;
    }
  }

LABEL_9:
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v19 = [v2 countByEnumeratingWithState:&v48 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v49;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v23 = *(*(&v48 + 1) + 8 * i);
        if (![v13 objectForKeyedSubscript:v23])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v24 = VRTraceErrorLogLevelToCSTR();
            v25 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              if (v23)
              {
                v26 = [objc_msgSend(v23 "description")];
              }

              else
              {
                v26 = "<nil>";
              }

              *buf = 136315906;
              v53 = v24;
              v54 = 2080;
              v55 = "+[VCServerBag pullStoreBagKeys]";
              v56 = 1024;
              v57 = 194;
              v58 = 2080;
              v59 = v26;
              _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Missing bag value for key %s, we'll pull from the store bag ourselves", buf, 0x26u);
            }
          }

          v27 = [mEMORY[0x1E69A53F0] objectForKey:v23];
          if (v27)
          {
            [v44 setObject:v27 forKeyedSubscript:v23];
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v28 = VRTraceErrorLogLevelToCSTR();
            v29 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              if (v23)
              {
                v30 = [objc_msgSend(v23 "description")];
              }

              else
              {
                v30 = "<nil>";
              }

              *buf = 136315906;
              v53 = v28;
              v54 = 2080;
              v55 = "+[VCServerBag pullStoreBagKeys]";
              v56 = 1024;
              v57 = 203;
              v58 = 2080;
              v59 = v30;
              _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to get store bag value for key = %s", buf, 0x26u);
            }
          }

          mEMORY[0x1E69A53F0] = v46;
        }
      }

      v20 = [v12 countByEnumeratingWithState:&v48 objects:v47 count:16];
    }

    while (v20);
  }

  if ([v44 count])
  {
    [GKSConnectivitySettings setServerAddresses:v44];
  }
}

+ (void)checkKeysAgainstHardcodedPrefs:(id)prefs
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E8A0];
  v4 = *MEMORY[0x1E695E898];
  v5 = CFPreferencesCopyKeyList(@"com.apple.facetime", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
  v6 = CFPreferencesCopyMultiple(v5, @"com.apple.facetime", v3, v4);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_msgSend(@"com.apple.facetime" "description")];
      if (v6)
      {
        v10 = [-[__CFDictionary description](v6 "description")];
      }

      else
      {
        v10 = "<nil>";
      }

      v11 = 136316162;
      v12 = v7;
      v13 = 2080;
      v14 = "+[VCServerBag checkKeysAgainstHardcodedPrefs:]";
      v15 = 1024;
      v16 = 231;
      v17 = 2080;
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d This is what we are reading in %s = %s", &v11, 0x30u);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

+ (void)retrieveBag
{
  v19 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A53F0] = [MEMORY[0x1E69A53F0] sharedInstance];
  if (([mEMORY[0x1E69A53F0] isLoaded] & 1) == 0)
  {
    [mEMORY[0x1E69A53F0] startBagLoad];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136316674;
      v6 = v3;
      v7 = 2080;
      v8 = "+[VCServerBag retrieveBag]";
      v9 = 1024;
      v10 = 244;
      v11 = 1024;
      isLoaded = [mEMORY[0x1E69A53F0] isLoaded];
      v13 = 2048;
      v14 = mEMORY[0x1E69A53F0];
      v15 = 1024;
      isServerAvailable = [mEMORY[0x1E69A53F0] isServerAvailable];
      v17 = 1024;
      isLoading = [mEMORY[0x1E69A53F0] isLoading];
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Retrieving server bag %d, %p, %d, %d", &v5, 0x38u);
    }
  }
}

+ (BOOL)verifyRequiredKeys:(id)keys withError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = +[GKSConnectivitySettings getAllSettings];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [keys countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(keys);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if (![v6 objectForKeyedSubscript:v11])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              if (v11)
              {
                v17 = [objc_msgSend(v11 "description")];
              }

              else
              {
                v17 = "<nil>";
              }

              v18 = 136315906;
              v19 = v15;
              v20 = 2080;
              v21 = "+[VCServerBag verifyRequiredKeys:withError:]";
              v22 = 1024;
              v23 = 255;
              v24 = 2080;
              v25 = v17;
              _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d We don't have the required keys %s.  Please file.", &v18, 0x26u);
            }
          }

          [GKVoiceChatError getNSError:error code:32000 detailedCode:112 filePath:0 description:@"No store bag is present so we failed the call." reason:@"Missing required store bag keys."];
          return 0;
        }
      }

      v8 = [keys countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = v12;
      v20 = 2080;
      v21 = "+[VCServerBag verifyRequiredKeys:withError:]";
      v22 = 1024;
      v23 = 262;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d verifyRequiredKeys finished.", &v18, 0x1Cu);
    }
  }

  return 1;
}

+ (BOOL)verifyRequiredVoiceChatKeys:(id *)keys
{
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"gk-commnat-main0", @"gk-commnat-main1", @"gk-commnat-cohort", 0}];
  LOBYTE(keys) = [self verifyRequiredKeys:v5 withError:keys];

  return keys;
}

+ (BOOL)verifyRequiredKeys:(id *)keys
{
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"gk-commnat-main0", @"gk-commnat-main1", @"gk-commnat-cohort", @"gk-commnat-main0-name", @"gk-commnat-main1-name", @"gk-commnat-cohort-name", 0}];
  v6 = [self verifyRequiredKeys:v5 withError:keys];
  if ((v6 & 1) == 0 && VRTraceIsInternalOSInstalled())
  {
    [self checkKeysAgainstHardcodedPrefs:v5];
  }

  return v6;
}

@end