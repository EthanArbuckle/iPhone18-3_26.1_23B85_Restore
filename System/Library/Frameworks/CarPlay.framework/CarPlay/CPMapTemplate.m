@interface CPMapTemplate
- (BOOL)isPanningInterfaceVisible;
- (BOOL)mapButton:(id)a3 setFocusedImage:(id)a4;
- (BOOL)mapButton:(id)a3 setHidden:(BOOL)a4;
- (BOOL)mapButton:(id)a3 setImageSet:(id)a4;
- (CPMapTemplate)init;
- (CPMapTemplate)initWithCoder:(id)a3;
- (CPNavigationSession)startNavigationSessionForTrip:(CPTrip *)trip;
- (id)mapDelegate;
- (int64_t)_displayStyleForManeuver:(id)a3;
- (void)_postBannerIfNecessaryForManeuver:(id)a3;
- (void)_postBannerIfNecessaryForNavigationAlert:(id)a3;
- (void)_resolveTrip:(id)a3 routeChoice:(id)a4 completion:(id)a5;
- (void)_updateBannerIfNecessaryForManeuver:(id)a3 travelEstimates:(id)a4;
- (void)_updateNavigationAlert:(id)a3;
- (void)bannerDidDisappearWithIdentifier:(id)a3;
- (void)bannerTappedWithIdentifier:(id)a3;
- (void)clientNavigationAlertDidAppear:(id)a3;
- (void)clientNavigationAlertDidDisappear:(id)a3 context:(unint64_t)a4;
- (void)clientNavigationAlertWillAppear:(id)a3;
- (void)clientNavigationAlertWillDisappear:(id)a3 context:(unint64_t)a4;
- (void)clientPanBeganWithDirection:(int64_t)a3;
- (void)clientPanEndedWithDirection:(int64_t)a3;
- (void)clientPanGestureBegan;
- (void)clientPanGestureEndedWithVelocity:(CGPoint)a3;
- (void)clientPanGestureWithDeltaPoint:(CGPoint)a3 velocity:(CGPoint)a4;
- (void)clientPanViewDidAppear;
- (void)clientPanViewDidDisappear;
- (void)clientPanViewWillDisappear;
- (void)clientPanWithDirection:(int64_t)a3;
- (void)clientPitchGestureBegan;
- (void)clientPitchGestureEndedWithCenterPoint:(CGPoint)a3;
- (void)clientPitchGestureWithCenterPoint:(CGPoint)a3;
- (void)clientRotationGestureBegan;
- (void)clientRotationGestureEndedWithVelocity:(double)a3;
- (void)clientRotationGestureWithCenterPoint:(CGPoint)a3 rotation:(double)a4 velocity:(double)a5;
- (void)clientTripCanceledByExternalNavigation;
- (void)clientZoomGestureBegan;
- (void)clientZoomGestureEndedWithVelocity:(double)a3;
- (void)clientZoomGestureWithCenterPoint:(CGPoint)a3 scale:(double)a4 velocity:(double)a5;
- (void)dismissNavigationAlertAnimated:(BOOL)animated completion:(void *)completion;
- (void)dismissPanningInterfaceAnimated:(BOOL)animated;
- (void)encodeWithCoder:(id)a3;
- (void)handleActionForControlIdentifier:(id)a3;
- (void)hideTripPreviews;
- (void)presentNavigationAlert:(CPNavigationAlert *)navigationAlert animated:(BOOL)animated;
- (void)previewTripIdentifier:(id)a3 usingRouteIdentifier:(id)a4;
- (void)setGuidanceBackgroundColor:(UIColor *)guidanceBackgroundColor;
- (void)setMapButtons:(NSArray *)mapButtons;
- (void)setNavigationSessionProvider:(id)a3;
- (void)setTripEstimateStyle:(CPTripEstimateStyle)tripEstimateStyle;
- (void)showPanningInterfaceAnimated:(BOOL)animated;
- (void)showRouteChoicesPreviewForTrip:(CPTrip *)tripPreview textConfiguration:(CPTripPreviewTextConfiguration *)textConfiguration;
- (void)showTripPreviews:(NSArray *)tripPreviews selectedTrip:(CPTrip *)selectedTrip textConfiguration:(CPTripPreviewTextConfiguration *)textConfiguration;
- (void)startTripIdentifier:(id)a3 usingRouteIdentifier:(id)a4;
- (void)updateTravelEstimates:(CPTravelEstimates *)estimates forTrip:(CPTrip *)trip withTimeRemainingColor:(CPTimeRemainingColor)timeRemainingColor;
@end

@implementation CPMapTemplate

- (CPMapTemplate)init
{
  v9.receiver = self;
  v9.super_class = CPMapTemplate;
  v2 = [(CPTemplate *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_automaticallyHidesNavigationBar = 1;
    v2->_hidesButtonsWithNavigationBar = 1;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    postedBannerObjects = v3->_postedBannerObjects;
    v3->_postedBannerObjects = v4;

    v3->_tripEstimateStyle = 1;
    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    navigationSessionProviderFuture = v3->_navigationSessionProviderFuture;
    v3->_navigationSessionProviderFuture = v6;
  }

  return v3;
}

- (CPMapTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CPMapTemplate;
  v5 = [(CPTemplate *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kCPMapTemplateMapButtonsKey"];
    mapButtons = v5->_mapButtons;
    v5->_mapButtons = v9;

    v5->_automaticallyHidesNavigationBar = [v4 decodeBoolForKey:@"kCPMapTemplateAutoHidesNavigationBarKey"];
    v5->_hidesButtonsWithNavigationBar = [v4 decodeBoolForKey:@"kCPMapTemplateHidesButtonsWithNavigationBarKey"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMapTemplateGuidanceBackgroundColorKey"];
    v12 = v11;
    if (v11)
    {
      v13 = CPSanitizedBackgroundColor(v11);
      guidanceBackgroundColor = v5->_guidanceBackgroundColor;
      v5->_guidanceBackgroundColor = v13;
    }

    v5->_tripEstimateStyle = [v4 decodeIntegerForKey:@"kCPMapTemplateTripEstimateStyleKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CPMapTemplate;
  v4 = a3;
  [(CPTemplate *)&v7 encodeWithCoder:v4];
  v5 = [(CPMapTemplate *)self mapButtons:v7.receiver];
  [v4 encodeObject:v5 forKey:@"kCPMapTemplateMapButtonsKey"];

  [v4 encodeBool:-[CPMapTemplate automaticallyHidesNavigationBar](self forKey:{"automaticallyHidesNavigationBar"), @"kCPMapTemplateAutoHidesNavigationBarKey"}];
  [v4 encodeBool:-[CPMapTemplate hidesButtonsWithNavigationBar](self forKey:{"hidesButtonsWithNavigationBar"), @"kCPMapTemplateHidesButtonsWithNavigationBarKey"}];
  v6 = [(CPMapTemplate *)self guidanceBackgroundColor];
  [v4 encodeObject:v6 forKey:@"kCPMapTemplateGuidanceBackgroundColorKey"];

  [v4 encodeInteger:-[CPMapTemplate tripEstimateStyle](self forKey:{"tripEstimateStyle"), @"kCPMapTemplateTripEstimateStyleKey"}];
}

- (void)setGuidanceBackgroundColor:(UIColor *)guidanceBackgroundColor
{
  if (self->_guidanceBackgroundColor != guidanceBackgroundColor)
  {
    v4 = CPSanitizedBackgroundColor(guidanceBackgroundColor);
    v5 = self->_guidanceBackgroundColor;
    self->_guidanceBackgroundColor = v4;

    v6 = self->_guidanceBackgroundColor;
    v7 = [(CPTemplate *)self templateProviderFuture];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__CPMapTemplate_setGuidanceBackgroundColor___block_invoke;
    v10[3] = &unk_278A10A90;
    v11 = v6;
    v8 = v6;
    v9 = [v7 addSuccessBlock:v10];
  }
}

- (void)setTripEstimateStyle:(CPTripEstimateStyle)tripEstimateStyle
{
  if (self->_tripEstimateStyle != tripEstimateStyle)
  {
    v8[7] = v3;
    v8[8] = v4;
    self->_tripEstimateStyle = tripEstimateStyle;
    v6 = [(CPTemplate *)self templateProviderFuture];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__CPMapTemplate_setTripEstimateStyle___block_invoke;
    v8[3] = &__block_descriptor_40_e34_v16__0___CPMapTemplateProviding__8l;
    v8[4] = tripEstimateStyle;
    v7 = [v6 addSuccessBlock:v8];
  }
}

- (void)showTripPreviews:(NSArray *)tripPreviews selectedTrip:(CPTrip *)selectedTrip textConfiguration:(CPTripPreviewTextConfiguration *)textConfiguration
{
  v9 = tripPreviews;
  v10 = selectedTrip;
  v11 = textConfiguration;
  if ([(NSArray *)v9 containsObject:v10])
  {
    v12 = [(NSArray *)v9 indexOfObject:v10];
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = 0;
  if (v11)
  {
LABEL_5:
    v13 = objc_opt_class();
    CPAssertAllowedClass(v11, v13, a2);
  }

LABEL_6:
  v14 = [(CPTemplate *)self templateProviderFuture];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__CPMapTemplate_showTripPreviews_selectedTrip_textConfiguration___block_invoke;
  v20[3] = &unk_278A11400;
  v15 = v9;
  v21 = v15;
  v22 = v11;
  v23 = v12;
  v16 = v11;
  v17 = [v14 addSuccessBlock:v20];

  v18 = self->_tripPreviews;
  self->_tripPreviews = v15;
  v19 = v15;
}

- (void)showRouteChoicesPreviewForTrip:(CPTrip *)tripPreview textConfiguration:(CPTripPreviewTextConfiguration *)textConfiguration
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = tripPreview;
  v8 = textConfiguration;
  v9 = objc_opt_class();
  CPAssertAllowedClass(v7, v9, a2);
  if (v8)
  {
    v10 = objc_opt_class();
    CPAssertAllowedClass(v8, v10, a2);
  }

  v11 = [(CPTemplate *)self templateProviderFuture];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __66__CPMapTemplate_showRouteChoicesPreviewForTrip_textConfiguration___block_invoke;
  v21 = &unk_278A11428;
  v22 = v7;
  v23 = v8;
  v12 = v8;
  v13 = v7;
  v14 = [v11 addSuccessBlock:&v18];

  v24[0] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:{1, v18, v19, v20, v21}];
  tripPreviews = self->_tripPreviews;
  self->_tripPreviews = v15;

  v17 = *MEMORY[0x277D85DE8];
}

void __66__CPMapTemplate_showRouteChoicesPreviewForTrip_textConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v4 setHostTripPreviews:v5 textConfiguration:*(a1 + 40) previewOnlyRouteChoices:1 selectedIndex:{0, v7, v8}];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)hideTripPreviews
{
  v3 = [(CPTemplate *)self templateProviderFuture];
  v4 = [v3 addSuccessBlock:&__block_literal_global_14];

  tripPreviews = self->_tripPreviews;
  self->_tripPreviews = MEMORY[0x277CBEBF8];
}

- (void)updateTravelEstimates:(CPTravelEstimates *)estimates forTrip:(CPTrip *)trip withTimeRemainingColor:(CPTimeRemainingColor)timeRemainingColor
{
  v8 = estimates;
  v9 = trip;
  [(CPTravelEstimates *)v8 setTimeRemainingColor:timeRemainingColor];
  v10 = [(CPTemplate *)self templateProviderFuture];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__CPMapTemplate_updateTravelEstimates_forTrip_withTimeRemainingColor___block_invoke;
  v14[3] = &unk_278A11428;
  v15 = v8;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  v13 = [v10 addSuccessBlock:v14];
}

void __70__CPMapTemplate_updateTravelEstimates_forTrip_withTimeRemainingColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 hostUpdateTravelEstimates:v2 forTripIdentifier:v5];
}

- (CPNavigationSession)startNavigationSessionForTrip:(CPTrip *)trip
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = trip;
  v5 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v4;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Starting navigation session for trip: %@.", buf, 0xCu);
  }

  v6 = [[CPNavigationSession alloc] initWithTrip:v4 mapTemplate:self];
  v7 = [(CPMapTemplate *)self mapDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CPMapTemplate *)self mapDelegate];
    v10 = [v9 mapTemplateShouldProvideNavigationMetadata:self];

    [(CPNavigationSession *)v6 setSendsNavigationMetadata:v10];
    [(CPTrip *)v4 setSendsNavigationMetadata:v10];
    if (v10)
    {
      [(CPNavigationSession *)v6 pauseTripForReason:2 description:0];
    }
  }

  v11 = [(CPTrip *)v4 destinationNameVariants];
  [(CPNavigationSession *)v6 setDestinationNameVariants:v11];

  v12 = [(CPMapTemplate *)self navigationSessionProviderFuture];
  v13 = [v12 isFinished];

  v14 = CarPlayFrameworkGeneralLogging();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 0;
      v16 = "Navigation session provider already connected";
LABEL_11:
      _os_log_impl(&dword_236ED4000, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }
  }

  else if (v15)
  {
    *buf = 0;
    v16 = "Navigation session provider not connected";
    goto LABEL_11;
  }

  v17 = [(CPMapTemplate *)self navigationSessionProviderFuture];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __47__CPMapTemplate_startNavigationSessionForTrip___block_invoke;
  v25[3] = &unk_278A11470;
  v26 = v4;
  v27 = self;
  v18 = v6;
  v28 = v18;
  v19 = v4;
  v20 = [v17 addSuccessBlock:v25];

  v21 = v28;
  v22 = v18;

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

void __47__CPMapTemplate_startNavigationSessionForTrip___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "Starting navigation session on host", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CPMapTemplate_startNavigationSessionForTrip___block_invoke_30;
  v7[3] = &unk_278A107F8;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v9 = *(a1 + 48);
  [v3 hostStartNavigationSessionForTrip:v5 reply:v7];
}

void __47__CPMapTemplate_startNavigationSessionForTrip___block_invoke_30(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "Navigation session started", &v10, 2u);
  }

  if ([*(*(a1 + 32) + 184) count])
  {
    v5 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Hiding trip previews card for trip %@.", &v10, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 184);
    *(v7 + 184) = MEMORY[0x277CBEBF8];
  }

  [*(a1 + 48) setManager:v3];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setNavigationSessionProvider:(id)a3
{
  objc_storeStrong(&self->_navigationSessionProvider, a3);
  v5 = a3;
  v6 = [(CPMapTemplate *)self navigationSessionProviderFuture];
  [v6 finishWithResult:v5];
}

- (BOOL)mapButton:(id)a3 setHidden:(BOOL)a4
{
  v6 = a3;
  v7 = [(CPTemplate *)self templateProviderFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__CPMapTemplate_mapButton_setHidden___block_invoke;
  v11[3] = &unk_278A11498;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 addSuccessBlock:v11];

  return 1;
}

void __37__CPMapTemplate_mapButton_setHidden___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setMapButton:v5 hidden:*(a1 + 40)];
}

- (BOOL)mapButton:(id)a3 setImageSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPTemplate *)self templateProviderFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__CPMapTemplate_mapButton_setImageSet___block_invoke;
  v13[3] = &unk_278A11428;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 addSuccessBlock:v13];

  return 1;
}

void __39__CPMapTemplate_mapButton_setImageSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 hostSetMapButton:v5 imageSet:*(a1 + 40)];
}

- (BOOL)mapButton:(id)a3 setFocusedImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPTemplate *)self templateProviderFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__CPMapTemplate_mapButton_setFocusedImage___block_invoke;
  v13[3] = &unk_278A11428;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 addSuccessBlock:v13];

  return 1;
}

void __43__CPMapTemplate_mapButton_setFocusedImage___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setMapButton:v5 focusedImage:*(a1 + 40)];
}

- (void)presentNavigationAlert:(CPNavigationAlert *)navigationAlert animated:(BOOL)animated
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = navigationAlert;
  [(CPNavigationAlert *)v7 setNavigationAlertUpdateTarget:self];
  objc_storeStrong(&self->_currentNavigationAlert, navigationAlert);
  v8 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = self;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_INFO, "%@: Presenting navigation alert: %@", buf, 0x16u);
  }

  v9 = [(CPTemplate *)self templateProviderFuture];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __49__CPMapTemplate_presentNavigationAlert_animated___block_invoke;
  v16 = &unk_278A11498;
  v17 = v7;
  v18 = animated;
  v10 = v7;
  v11 = [v9 addSuccessBlock:&v13];

  [(CPMapTemplate *)self _postBannerIfNecessaryForNavigationAlert:v10, v13, v14, v15, v16];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)dismissNavigationAlertAnimated:(BOOL)animated completion:(void *)completion
{
  v6 = completion;
  v7 = [(CPTemplate *)self templateProviderFuture];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CPMapTemplate_dismissNavigationAlertAnimated_completion___block_invoke;
  v10[3] = &unk_278A11510;
  v12 = animated;
  v11 = v6;
  v8 = v6;
  v9 = [v7 addSuccessBlock:v10];
}

void __59__CPMapTemplate_dismissNavigationAlertAnimated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__CPMapTemplate_dismissNavigationAlertAnimated_completion___block_invoke_2;
  v4[3] = &unk_278A114E8;
  v5 = *(a1 + 32);
  [a2 dismissNavigationAlertAnimated:v3 completion:v4];
}

void __59__CPMapTemplate_dismissNavigationAlertAnimated_completion___block_invoke_2(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__CPMapTemplate_dismissNavigationAlertAnimated_completion___block_invoke_3;
  v3[3] = &unk_278A114C0;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __59__CPMapTemplate_dismissNavigationAlertAnimated_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)_updateNavigationAlert:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_INFO, "%@: Updating navigation alert: %@", buf, 0x16u);
  }

  v6 = [v4 identifier];
  v7 = [(CPMapTemplate *)self currentNavigationAlert];
  v8 = [v7 identifier];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [(CPTemplate *)self templateProviderFuture];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __40__CPMapTemplate__updateNavigationAlert___block_invoke;
    v13[3] = &unk_278A10A90;
    v14 = v4;
    v11 = [v10 addSuccessBlock:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setMapButtons:(NSArray *)mapButtons
{
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __31__CPMapTemplate_setMapButtons___block_invoke;
  v17[3] = &__block_descriptor_40_e28_v32__0__CPMapButton_8Q16_B24l;
  v17[4] = a2;
  v4 = mapButtons;
  [(NSArray *)v4 enumerateObjectsUsingBlock:v17];
  [(NSArray *)self->_mapButtons makeObjectsPerformSelector:sel_setControlDelegate_ withObject:0];
  v5 = [MEMORY[0x277CBEB18] array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __31__CPMapTemplate_setMapButtons___block_invoke_2;
  v15[3] = &unk_278A11558;
  v15[4] = self;
  v16 = v5;
  v6 = v5;
  [(NSArray *)v4 enumerateObjectsUsingBlock:v15];

  v7 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
  v8 = self->_mapButtons;
  self->_mapButtons = v7;

  v9 = self->_mapButtons;
  v10 = [(CPTemplate *)self templateProviderFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__CPMapTemplate_setMapButtons___block_invoke_3;
  v13[3] = &unk_278A10A90;
  v14 = v9;
  v11 = v9;
  v12 = [v10 addSuccessBlock:v13];
}

void __31__CPMapTemplate_setMapButtons___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_opt_class();
  CPAssertAllowedClass(v4, v3, *(a1 + 32));
}

void __31__CPMapTemplate_setMapButtons___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3 == 4)
  {
    *a4 = 1;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = a2;
    [v7 setControlDelegate:v6];
    [*(a1 + 40) addObject:v7];
  }
}

- (void)handleActionForControlIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CPMapTemplate_handleActionForControlIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __50__CPMapTemplate_handleActionForControlIdentifier___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentNavigationAlert];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) currentNavigationAlert];
    v5 = [v4 primaryAction];
    v6 = [v5 identifier];
    LODWORD(v3) = [v3 isEqual:v6];

    if (v3)
    {
      v7 = CarPlayFrameworkGeneralLogging();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        *buf = 138412546;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_INFO, "%@: Activated navigation alert primary action with control identifier: %@", buf, 0x16u);
      }

      v10 = [*(a1 + 32) currentNavigationAlert];
      v11 = [v10 primaryAction];
LABEL_10:
      v19 = v11;
      __50__CPMapTemplate_handleActionForControlIdentifier___block_invoke_2(v11, v11);

      goto LABEL_17;
    }

    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) currentNavigationAlert];
    v14 = [v13 secondaryAction];
    v15 = [v14 identifier];
    LODWORD(v12) = [v12 isEqual:v15];

    if (v12)
    {
      v16 = CarPlayFrameworkGeneralLogging();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_236ED4000, v16, OS_LOG_TYPE_INFO, "%@: Activated navigation alert secondary action with control identifier: %@", buf, 0x16u);
      }

      v10 = [*(a1 + 32) currentNavigationAlert];
      v11 = [v10 secondaryAction];
      goto LABEL_10;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = __Block_byref_object_copy__5;
  v39 = __Block_byref_object_dispose__5;
  v40 = 0;
  v20 = [*(a1 + 32) mapButtons];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __50__CPMapTemplate_handleActionForControlIdentifier___block_invoke_43;
  v28[3] = &unk_278A11580;
  v29 = *(a1 + 40);
  v30 = buf;
  [v20 enumerateObjectsUsingBlock:v28];

  if (*(*&buf[8] + 40))
  {
    v21 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = *(*&buf[8] + 40);
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      *v31 = 138412802;
      v32 = v23;
      v33 = 2112;
      v34 = v22;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_236ED4000, v21, OS_LOG_TYPE_INFO, "%@: Activated button: %@ for control identifier: %@", v31, 0x20u);
    }

    [*(*&buf[8] + 40) handlePrimaryAction];
  }

  else
  {
    v25 = *(a1 + 40);
    v27.receiver = *(a1 + 32);
    v27.super_class = CPMapTemplate;
    objc_msgSendSuper2(&v27, sel_handleActionForControlIdentifier_, v25);
  }

  _Block_object_dispose(buf, 8);
LABEL_17:
  v26 = *MEMORY[0x277D85DE8];
}

void __50__CPMapTemplate_handleActionForControlIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 handler];

  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CPMapTemplate_handleActionForControlIdentifier___block_invoke_3;
    block[3] = &unk_278A105A0;
    v5 = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __50__CPMapTemplate_handleActionForControlIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v2[2](v2, *(a1 + 32));
}

void __50__CPMapTemplate_handleActionForControlIdentifier___block_invoke_43(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_resolveTrip:(id)a3 routeChoice:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CPMapTemplate *)self tripPreviews];
  v12 = MEMORY[0x277CCAC30];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __53__CPMapTemplate__resolveTrip_routeChoice_completion___block_invoke;
  v29[3] = &unk_278A115A8;
  v13 = v8;
  v30 = v13;
  v14 = [v12 predicateWithBlock:v29];
  v15 = [v11 filteredArrayUsingPredicate:v14];
  v16 = [v15 firstObject];

  v17 = [v16 routeChoices];
  v18 = MEMORY[0x277CCAC30];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __53__CPMapTemplate__resolveTrip_routeChoice_completion___block_invoke_2;
  v27 = &unk_278A115D0;
  v19 = v9;
  v28 = v19;
  v20 = [v18 predicateWithBlock:&v24];
  v21 = [v17 filteredArrayUsingPredicate:{v20, v24, v25, v26, v27}];
  v22 = [v21 firstObject];

  if (v16 && v22)
  {
    if (v10)
    {
      v10[2](v10, v16, v22);
    }
  }

  else
  {
    v23 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CPMapTemplate _resolveTrip:v13 routeChoice:v19 completion:v23];
    }
  }
}

uint64_t __53__CPMapTemplate__resolveTrip_routeChoice_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

uint64_t __53__CPMapTemplate__resolveTrip_routeChoice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)previewTripIdentifier:(id)a3 usingRouteIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CPMapTemplate_previewTripIdentifier_usingRouteIdentifier___block_invoke;
  block[3] = &unk_278A11620;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__CPMapTemplate_previewTripIdentifier_usingRouteIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__CPMapTemplate_previewTripIdentifier_usingRouteIdentifier___block_invoke_2;
  v7[3] = &unk_278A115F8;
  v5 = *(a1 + 32);
  v8 = v2;
  v9 = v5;
  v6 = v2;
  [v5 _resolveTrip:v3 routeChoice:v4 completion:v7];
}

void __60__CPMapTemplate_previewTripIdentifier_usingRouteIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) mapTemplate:*(a1 + 40) selectedPreviewForTrip:v5 usingRouteChoice:v6];
  }

  else
  {
    v8 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60__CPMapTemplate_previewTripIdentifier_usingRouteIdentifier___block_invoke_2_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

- (void)startTripIdentifier:(id)a3 usingRouteIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CPMapTemplate_startTripIdentifier_usingRouteIdentifier___block_invoke;
  block[3] = &unk_278A11620;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__CPMapTemplate_startTripIdentifier_usingRouteIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CPMapTemplate_startTripIdentifier_usingRouteIdentifier___block_invoke_2;
  v7[3] = &unk_278A115F8;
  v5 = *(a1 + 32);
  v8 = v2;
  v9 = v5;
  v6 = v2;
  [v5 _resolveTrip:v3 routeChoice:v4 completion:v7];
}

void __58__CPMapTemplate_startTripIdentifier_usingRouteIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) mapTemplate:*(a1 + 40) startedTrip:v5 usingRouteChoice:v6];
  }

  else
  {
    v8 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__CPMapTemplate_startTripIdentifier_usingRouteIdentifier___block_invoke_2_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

- (void)showPanningInterfaceAnimated:(BOOL)animated
{
  v4 = [(CPTemplate *)self templateProviderFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__CPMapTemplate_showPanningInterfaceAnimated___block_invoke;
  v6[3] = &__block_descriptor_33_e34_v16__0___CPMapTemplateProviding__8l;
  v7 = animated;
  v5 = [v4 addSuccessBlock:v6];
}

- (void)dismissPanningInterfaceAnimated:(BOOL)animated
{
  v4 = [(CPTemplate *)self templateProviderFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CPMapTemplate_dismissPanningInterfaceAnimated___block_invoke;
  v6[3] = &__block_descriptor_33_e34_v16__0___CPMapTemplateProviding__8l;
  v7 = animated;
  v5 = [v4 addSuccessBlock:v6];
}

- (BOOL)isPanningInterfaceVisible
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(CPTemplate *)self templateProviderFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__CPMapTemplate_isPanningInterfaceVisible__block_invoke;
  v9[3] = &unk_278A11670;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  v6 = [v4 addSuccessBlock:v9];

  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v7);
  LOBYTE(v4) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v4;
}

void __42__CPMapTemplate_isPanningInterfaceVisible__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__CPMapTemplate_isPanningInterfaceVisible__block_invoke_2;
  v5[3] = &unk_278A11648;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 hostPanInterfaceVisible:v5];
}

- (void)clientPanViewDidAppear
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CPMapTemplate_clientPanViewDidAppear__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__CPMapTemplate_clientPanViewDidAppear__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplateDidShowPanningInterface:*(a1 + 32)];
  }
}

- (void)clientPanViewWillDisappear
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CPMapTemplate_clientPanViewWillDisappear__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __43__CPMapTemplate_clientPanViewWillDisappear__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplateWillDismissPanningInterface:*(a1 + 32)];
  }
}

- (void)clientPanViewDidDisappear
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CPMapTemplate_clientPanViewDidDisappear__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __42__CPMapTemplate_clientPanViewDidDisappear__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplateDidDismissPanningInterface:*(a1 + 32)];
  }
}

- (void)clientPanBeganWithDirection:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CPMapTemplate_clientPanBeganWithDirection___block_invoke;
  v3[3] = &unk_278A10758;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __45__CPMapTemplate_clientPanBeganWithDirection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplate:*(a1 + 32) panBeganWithDirection:*(a1 + 40)];
  }
}

- (void)clientPanEndedWithDirection:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CPMapTemplate_clientPanEndedWithDirection___block_invoke;
  v3[3] = &unk_278A10758;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __45__CPMapTemplate_clientPanEndedWithDirection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplate:*(a1 + 32) panEndedWithDirection:*(a1 + 40)];
  }
}

- (void)clientPanGestureBegan
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CPMapTemplate_clientPanGestureBegan__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __38__CPMapTemplate_clientPanGestureBegan__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplateDidBeginPanGesture:*(a1 + 32)];
  }
}

- (void)clientPanGestureWithDeltaPoint:(CGPoint)a3 velocity:(CGPoint)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CPMapTemplate_clientPanGestureWithDeltaPoint_velocity___block_invoke;
  block[3] = &unk_278A10C40;
  block[4] = self;
  v5 = a3;
  v6 = a4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__CPMapTemplate_clientPanGestureWithDeltaPoint_velocity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplate:*(a1 + 32) didUpdatePanGestureWithTranslation:*(a1 + 40) velocity:{*(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  }
}

- (void)clientPanGestureEndedWithVelocity:(CGPoint)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CPMapTemplate_clientPanGestureEndedWithVelocity___block_invoke;
  block[3] = &unk_278A11698;
  block[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__CPMapTemplate_clientPanGestureEndedWithVelocity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplate:*(a1 + 32) didEndPanGestureWithVelocity:{*(a1 + 40), *(a1 + 48)}];
  }
}

- (void)clientZoomGestureBegan
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CPMapTemplate_clientZoomGestureBegan__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__CPMapTemplate_clientZoomGestureBegan__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplateDidBeginZoomGesture:*(a1 + 32)];
  }
}

- (void)clientZoomGestureWithCenterPoint:(CGPoint)a3 scale:(double)a4 velocity:(double)a5
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CPMapTemplate_clientZoomGestureWithCenterPoint_scale_velocity___block_invoke;
  block[3] = &unk_278A10C40;
  block[4] = self;
  v6 = a3;
  v7 = a4;
  v8 = a5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__CPMapTemplate_clientZoomGestureWithCenterPoint_scale_velocity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplate:*(a1 + 32) didUpdateZoomGestureWithCenter:*(a1 + 40) scale:*(a1 + 48) velocity:{*(a1 + 56), *(a1 + 64)}];
  }
}

- (void)clientZoomGestureEndedWithVelocity:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__CPMapTemplate_clientZoomGestureEndedWithVelocity___block_invoke;
  v3[3] = &unk_278A10758;
  v3[4] = self;
  *&v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __52__CPMapTemplate_clientZoomGestureEndedWithVelocity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplate:*(a1 + 32) didEndZoomGestureWithVelocity:*(a1 + 40)];
  }
}

- (void)clientRotationGestureBegan
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CPMapTemplate_clientRotationGestureBegan__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __43__CPMapTemplate_clientRotationGestureBegan__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplateDidBeginRotationGesture:*(a1 + 32)];
  }
}

- (void)clientRotationGestureWithCenterPoint:(CGPoint)a3 rotation:(double)a4 velocity:(double)a5
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CPMapTemplate_clientRotationGestureWithCenterPoint_rotation_velocity___block_invoke;
  block[3] = &unk_278A10C40;
  block[4] = self;
  v6 = a3;
  v7 = a4;
  v8 = a5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__CPMapTemplate_clientRotationGestureWithCenterPoint_rotation_velocity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplate:*(a1 + 32) didRotateWithCenter:*(a1 + 40) rotation:*(a1 + 48) velocity:{*(a1 + 56), *(a1 + 64)}];
  }
}

- (void)clientRotationGestureEndedWithVelocity:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__CPMapTemplate_clientRotationGestureEndedWithVelocity___block_invoke;
  v3[3] = &unk_278A10758;
  v3[4] = self;
  *&v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __56__CPMapTemplate_clientRotationGestureEndedWithVelocity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplate:*(a1 + 32) rotationDidEndWithVelocity:*(a1 + 40)];
  }
}

- (void)clientPitchGestureBegan
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CPMapTemplate_clientPitchGestureBegan__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __40__CPMapTemplate_clientPitchGestureBegan__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplateDidBeginPitchGesture:*(a1 + 32)];
  }
}

- (void)clientPitchGestureWithCenterPoint:(CGPoint)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CPMapTemplate_clientPitchGestureWithCenterPoint___block_invoke;
  block[3] = &unk_278A11698;
  block[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__CPMapTemplate_clientPitchGestureWithCenterPoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplate:*(a1 + 32) pitchWithCenter:{*(a1 + 40), *(a1 + 48)}];
  }
}

- (void)clientPitchGestureEndedWithCenterPoint:(CGPoint)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CPMapTemplate_clientPitchGestureEndedWithCenterPoint___block_invoke;
  block[3] = &unk_278A11698;
  block[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__CPMapTemplate_clientPitchGestureEndedWithCenterPoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplate:*(a1 + 32) pitchEndedWithCenter:{*(a1 + 40), *(a1 + 48)}];
  }
}

- (void)clientPanWithDirection:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__CPMapTemplate_clientPanWithDirection___block_invoke;
  v3[3] = &unk_278A10758;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __40__CPMapTemplate_clientPanWithDirection___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  v4 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3 & 1];
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "%@: Pan button pressed with direction: %@. Delegate responds to panWithDirection: %@", &v10, 0x20u);
  }

  if (v3)
  {
    v8 = [*(a1 + 32) mapDelegate];
    [v8 mapTemplate:*(a1 + 32) panWithDirection:*(a1 + 40)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clientNavigationAlertWillAppear:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CPMapTemplate_clientNavigationAlertWillAppear___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __49__CPMapTemplate_clientNavigationAlertWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v7 = [*(a1 + 32) mapDelegate];
    v4 = *(a1 + 32);
    v5 = [v4 currentNavigationAlert];
    v6 = v5;
    if (!v5)
    {
      v6 = *(a1 + 40);
    }

    [v7 mapTemplate:v4 willShowNavigationAlert:v6];
  }
}

- (void)clientNavigationAlertDidAppear:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__CPMapTemplate_clientNavigationAlertDidAppear___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __48__CPMapTemplate_clientNavigationAlertDidAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v7 = [*(a1 + 32) mapDelegate];
    v4 = *(a1 + 32);
    v5 = [v4 currentNavigationAlert];
    v6 = v5;
    if (!v5)
    {
      v6 = *(a1 + 40);
    }

    [v7 mapTemplate:v4 didShowNavigationAlert:v6];
  }
}

- (void)clientNavigationAlertWillDisappear:(id)a3 context:(unint64_t)a4
{
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CPMapTemplate_clientNavigationAlertWillDisappear_context___block_invoke;
  block[3] = &unk_278A10D48;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__CPMapTemplate_clientNavigationAlertWillDisappear_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v7 = [*(a1 + 32) mapDelegate];
    v4 = *(a1 + 32);
    v5 = [v4 currentNavigationAlert];
    v6 = v5;
    if (!v5)
    {
      v6 = *(a1 + 40);
    }

    [v7 mapTemplate:v4 willDismissNavigationAlert:v6 dismissalContext:*(a1 + 48)];
  }
}

- (void)clientNavigationAlertDidDisappear:(id)a3 context:(unint64_t)a4
{
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CPMapTemplate_clientNavigationAlertDidDisappear_context___block_invoke;
  block[3] = &unk_278A10D48;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__CPMapTemplate_clientNavigationAlertDidDisappear_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    v5 = *(a1 + 32);
    v6 = [v5 currentNavigationAlert];
    v7 = v6;
    if (!v6)
    {
      v7 = *(a1 + 40);
    }

    [v4 mapTemplate:v5 didDismissNavigationAlert:v7 dismissalContext:*(a1 + 48)];
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 144);
  *(v8 + 144) = 0;

  v10 = [*(a1 + 40) identifier];

  if (v10)
  {
    v20 = [*(a1 + 32) postedBannerObjects];
    v11 = [*(a1 + 40) identifier];
    [v20 removeObjectForKey:v11];
  }

  else
  {
    v12 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __59__CPMapTemplate_clientNavigationAlertDidDisappear_context___block_invoke_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

- (void)clientTripCanceledByExternalNavigation
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CPMapTemplate_clientTripCanceledByExternalNavigation__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__CPMapTemplate_clientTripCanceledByExternalNavigation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapDelegate];
    [v4 mapTemplateDidCancelNavigation:*(a1 + 32)];
  }

  v5 = [*(a1 + 32) postedBannerObjects];
  [v5 removeAllObjects];
}

- (int64_t)_displayStyleForManeuver:(id)a3
{
  v4 = a3;
  v5 = [(CPMapTemplate *)self mapDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 mapTemplate:self displayStyleForManeuver:v4];
    [v4 setDisplayStyle:v6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)bannerDidDisappearWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPMapTemplate *)self postedBannerObjects];
  [v5 removeObjectForKey:v4];
}

- (void)bannerTappedWithIdentifier:(id)a3
{
  v19 = a3;
  v4 = [(CPMapTemplate *)self postedBannerObjects];
  v5 = [v4 objectForKeyedSubscript:v19];

  if (v5)
  {
    v6 = [(CPMapTemplate *)self postedBannerObjects];
    [v6 removeObjectForKey:v19];

    v7 = +[CPTemplateApplicationScene activeTemplateScene];
    v8 = [v7 delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_opt_respondsToSelector())
      {
        [v8 templateApplicationScene:v7 didSelectNavigationAlert:v5];
LABEL_13:

        goto LABEL_14;
      }

      v9 = [MEMORY[0x277D75128] sharedApplication];
      v10 = [v9 delegate];
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }

      v12 = [MEMORY[0x277D75128] sharedApplication];
      v13 = [v12 delegate];

      v14 = [MEMORY[0x277D75128] sharedApplication];
      [v13 application:v14 didSelectNavigationAlert:v5];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      if (objc_opt_respondsToSelector())
      {
        [v8 templateApplicationScene:v7 didSelectManeuver:v5];
        goto LABEL_13;
      }

      v15 = [MEMORY[0x277D75128] sharedApplication];
      v16 = [v15 delegate];
      v17 = objc_opt_respondsToSelector();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = [MEMORY[0x277D75128] sharedApplication];
      v13 = [v18 delegate];

      v14 = [MEMORY[0x277D75128] sharedApplication];
      [v13 application:v14 didSelectManeuver:v5];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)_postBannerIfNecessaryForManeuver:(id)a3
{
  v12 = a3;
  v4 = [(CPTemplate *)self templateDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (-[CPTemplate templateDelegate](self, "templateDelegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isCarPlayCanvasActive], v6, (v7 & 1) == 0))
  {
    v8 = [(CPMapTemplate *)self mapDelegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 mapTemplate:self shouldShowNotificationForManeuver:v12])
    {
      postedBannerObjects = self->_postedBannerObjects;
      v10 = [v12 identifier];
      [(NSMutableDictionary *)postedBannerObjects setObject:v12 forKeyedSubscript:v10];

      v11 = [(CPMapTemplate *)self bannerProvider];
      [v11 postBannerForManeuver:v12 travelEstimates:0];
    }
  }
}

- (void)_postBannerIfNecessaryForNavigationAlert:(id)a3
{
  v12 = a3;
  v4 = [(CPTemplate *)self templateDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (-[CPTemplate templateDelegate](self, "templateDelegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isCarPlayCanvasActive], v6, (v7 & 1) == 0))
  {
    v8 = [(CPMapTemplate *)self mapDelegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 mapTemplate:self shouldShowNotificationForNavigationAlert:v12])
    {
      postedBannerObjects = self->_postedBannerObjects;
      v10 = [v12 identifier];
      [(NSMutableDictionary *)postedBannerObjects setObject:v12 forKeyedSubscript:v10];

      v11 = [(CPMapTemplate *)self bannerProvider];
      [v11 postBannerForNavigationAlert:v12];
    }
  }
}

- (void)_updateBannerIfNecessaryForManeuver:(id)a3 travelEstimates:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(CPTemplate *)self templateDelegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0 || (-[CPTemplate templateDelegate](self, "templateDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isCarPlayCanvasActive], v9, (v10 & 1) == 0))
  {
    v11 = [(CPMapTemplate *)self mapDelegate];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 mapTemplate:self shouldUpdateNotificationForManeuver:v16 withTravelEstimates:v6];
      if (v16)
      {
        if (v12)
        {
          postedBannerObjects = self->_postedBannerObjects;
          v14 = [v16 identifier];
          [(NSMutableDictionary *)postedBannerObjects setObject:v16 forKeyedSubscript:v14];

          v15 = [(CPMapTemplate *)self bannerProvider];
          [v15 postBannerForManeuver:v16 travelEstimates:v6];
        }
      }
    }
  }
}

- (id)mapDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapDelegate);

  return WeakRetained;
}

- (void)_resolveTrip:(uint64_t)a1 routeChoice:(uint64_t)a2 completion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_236ED4000, log, OS_LOG_TYPE_ERROR, "failed to find matching objects for trip %@ and route %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end