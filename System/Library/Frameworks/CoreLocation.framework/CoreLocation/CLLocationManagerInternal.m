@interface CLLocationManagerInternal
- (CLLocationManagerInternal)initWithInfo:(id)a3 bundleIdentifier:(id)a4 bundlePath:(id)a5 websiteIdentifier:(id)a6 delegate:(id)a7 silo:(id)a8;
- (void)cancelLocationRequest;
- (void)dealloc;
- (void)invalidate;
- (void)performCourtesyPromptIfNeeded;
- (void)setAllowsBackgroundLocationUpdates:(BOOL)a3;
- (void)setShowsBackgroundLocationIndicator:(BOOL)a3;
- (void)stopUpdatingLocationAutoPaused;
@end

@implementation CLLocationManagerInternal

- (void)performCourtesyPromptIfNeeded
{
  if ([(CLLocationManagerStateTracker *)self->fState courtesyPromptNeeded])
  {
    fClient = self->fClient;

    CLClientRequestAuthorization(fClient, 3);
  }
}

- (void)dealloc
{
  [(CLLocationManagerInternal *)self setClientKeyForIdentityValidation:0];
  [(CLLocationManagerInternal *)self setMonitorLedgerAccessKey:0];

  self->fPlaceInferenceTimer = 0;
  fRangedRegions = self->fRangedRegions;
  if (fRangedRegions)
  {
    self->fRangedRegions = 0;
    fClient = self->fClient;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B898460;
    v9[3] = &unk_1E753CCE0;
    v9[4] = fRangedRegions;
    if (fClient)
    {
      v5 = *(fClient + 29);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_19B88071C;
      v10[3] = &unk_1E753CCE0;
      v10[4] = v9;
      [v5 async:v10];
    }
  }

  [self->fPlaceInferenceHandler invalidate];

  self->fPlaceInferenceHandler = 0;
  v6 = *&self->fLocation.fromSimulationController;
  if (v6)
  {
    [*&self->fLocation.fromSimulationController invalidate];

    *&self->fLocation.fromSimulationController = 0;
  }

  v7 = self->fClient;
  if (v7)
  {
    CLClientInvalidate(v7);
    CFRelease(self->fClient);
    self->fClient = 0;
  }

  *&self->fIsMasquerading = 0;
  self->fState = 0;
  v8.receiver = self;
  v8.super_class = CLLocationManagerInternal;
  [(CLLocationManagerInternal *)&v8 dealloc];
}

- (void)cancelLocationRequest
{
  [(CLLocationManagerStateTracker *)self->fState setRequestingLocation:0];
  v3 = *&self->fLocation.fromSimulationController;
  if (v3)
  {
    [*&self->fLocation.fromSimulationController invalidate];

    *&self->fLocation.fromSimulationController = 0;
  }
}

- (void)invalidate
{
  fClient = self->fClient;
  if (fClient)
  {
    CLClientInvalidate(fClient);
  }
}

- (CLLocationManagerInternal)initWithInfo:(id)a3 bundleIdentifier:(id)a4 bundlePath:(id)a5 websiteIdentifier:(id)a6 delegate:(id)a7 silo:(id)a8
{
  v17.receiver = self;
  v17.super_class = CLLocationManagerInternal;
  v11 = [(CLLocationManagerInternal *)&v17 init];
  if (v11)
  {
    v12 = [CLLocationManagerStateTracker alloc];
    *(v11 + 4) = [(CLLocationManagerStateTracker *)v12 initWithQueue:MEMORY[0x1E69E96A0] identifier:a3 state:&unk_1F0E6B680];
    *(v11 + 36) = a8;
    objc_storeWeak(v11 + 2, a7);
    objc_storeWeak(v11 + 3, a3);
    v13 = *MEMORY[0x1E695E480];
    v14 = *(v11 + 36);
    v15 = CLClientCreateWithBundleIdentifierAndPathWithWebsiteOnSilo();
    *(v11 + 1) = v15;
    v11[272] = *(v15 + 17) != 0;
    *(v11 + 60) = 0xBFF0000000000000;
    *(v11 + 26) = 0;
    *(v11 + 27) = 0x4024000000000000;
    *(v11 + 56) = 1;
    *(v11 + 29) = objc_alloc_init(MEMORY[0x1E695DFA8]);
    *(v11 + 30) = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v11 setClientKeyForIdentityValidation:0];
    [v11 setMonitorLedgerAccessKey:0];
    *(v11 + 35) = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v11;
}

- (void)setAllowsBackgroundLocationUpdates:(BOOL)a3
{
  v3 = a3;
  [(CLLocationManagerStateTracker *)self->fState setAllowsBackgroundLocationUpdates:?];
  fClient = self->fClient;

  sub_19B88EB50(fClient, v3);
}

- (void)setShowsBackgroundLocationIndicator:(BOOL)a3
{
  v3 = a3;
  [(CLLocationManagerStateTracker *)self->fState setShowsBackgroundLocationIndicator:?];
  fClient = self->fClient;

  sub_19B88EC08(fClient, v3);
}

- (void)stopUpdatingLocationAutoPaused
{
  [(CLLocationManagerStateTracker *)self->fState setUpdatingLocation:0];
  [(CLLocationManagerStateTracker *)self->fState setPaused:1];
  fClient = self->fClient;

  CLClientStopLocationUpdates_0(fClient);
}

@end