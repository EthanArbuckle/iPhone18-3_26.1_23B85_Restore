@interface CHCompanionHealthProfileExtension
- (CHCompanionHealthProfileExtension)initWithProfile:(id)profile;
- (HDProfile)profile;
- (void)dealloc;
@end

@implementation CHCompanionHealthProfileExtension

- (CHCompanionHealthProfileExtension)initWithProfile:(id)profile
{
  profileCopy = profile;
  v58.receiver = self;
  v58.super_class = CHCompanionHealthProfileExtension;
  v5 = [(CHCompanionHealthProfileExtension *)&v58 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = objc_alloc(MEMORY[0x29EDC0BC0]);
    v10 = objc_msgSend_profile(v6, v8, v9);
    v12 = objc_msgSend_initWithProfile_(v7, v11, v10);
    activityApplicationInstallationManager = v6->_activityApplicationInstallationManager;
    v6->_activityApplicationInstallationManager = v12;

    v14 = objc_alloc(MEMORY[0x29EDC0BD8]);
    v17 = objc_msgSend_profile(v6, v15, v16);
    v19 = objc_msgSend_initWithProfile_(v14, v18, v17);
    companionWorkoutCreditManager = v6->_companionWorkoutCreditManager;
    v6->_companionWorkoutCreditManager = v19;

    v21 = objc_alloc_init(MEMORY[0x29EDC0BE0]);
    fitnessAppBadgeManager = v6->_fitnessAppBadgeManager;
    v6->_fitnessAppBadgeManager = v21;

    v23 = objc_alloc(MEMORY[0x29EDC0BC8]);
    v26 = objc_msgSend_profile(v6, v24, v25);
    v28 = objc_msgSend_initWithProfile_(v23, v27, v26);
    coachDiagnosticManager = v6->_coachDiagnosticManager;
    v6->_coachDiagnosticManager = v28;

    v30 = objc_alloc(MEMORY[0x29EDC0BE8]);
    v33 = objc_msgSend_profile(v6, v31, v32);
    v35 = objc_msgSend_initWithProfile_(v30, v34, v33);
    trendsNotificationManager = v6->_trendsNotificationManager;
    v6->_trendsNotificationManager = v35;

    v37 = objc_alloc(MEMORY[0x29EDC0BD0]);
    v40 = objc_msgSend_profile(v6, v38, v39);
    v42 = objc_msgSend_initWithProfile_(v37, v41, v40);
    widgetSchedulingManager = v6->_widgetSchedulingManager;
    v6->_widgetSchedulingManager = v42;

    v44 = objc_alloc(MEMORY[0x29EDC1148]);
    v47 = objc_msgSend_profile(v6, v45, v46);
    v49 = objc_msgSend_initWithProfile_(v44, v48, v47);
    fitnessCoachingHealthService = v6->_fitnessCoachingHealthService;
    v6->_fitnessCoachingHealthService = v49;

    objc_initWeak(&location, v6);
    v51 = *MEMORY[0x29EDBA9B8];
    v52 = MEMORY[0x29EDCA578];
    v53 = MEMORY[0x29EDCA578];
    v55[0] = MEMORY[0x29EDCA5F8];
    v55[1] = 3221225472;
    v55[2] = sub_29E9FE318;
    v55[3] = &unk_29F377448;
    objc_copyWeak(&v56, &location);
    notify_register_dispatch(v51, &v6->_standalonePhoneFitnessModeChangeToken, v52, v55);

    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  standalonePhoneFitnessModeChangeToken = self->_standalonePhoneFitnessModeChangeToken;
  if (standalonePhoneFitnessModeChangeToken != -1)
  {
    notify_cancel(standalonePhoneFitnessModeChangeToken);
  }

  v4.receiver = self;
  v4.super_class = CHCompanionHealthProfileExtension;
  [(CHCompanionHealthProfileExtension *)&v4 dealloc];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end