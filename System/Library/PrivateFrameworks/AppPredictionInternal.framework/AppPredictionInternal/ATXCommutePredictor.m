@interface ATXCommutePredictor
- (ATXCommutePredictor)initWithTransitionsCache:(id)a3 locationManager:(id)a4;
- (id)getNextTransitionOnActivity:(id)a3;
@end

@implementation ATXCommutePredictor

- (ATXCommutePredictor)initWithTransitionsCache:(id)a3 locationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXCommutePredictor;
  v9 = [(ATXCommutePredictor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cache, a3);
    objc_storeStrong(&v10->_manager, a4);
  }

  return v10;
}

- (id)getNextTransitionOnActivity:(id)a3
{
  v4 = a3;
  v5 = [(ATXLocationManagerProtocol *)self->_manager locationOfInterestAtCurrentLocation];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  v7 = [v5 type];
  v8 = [v6 type];
  if (!v7)
  {
    v9 = [(ATXPredictedTransitionsCache *)self->_cache getNextHomeToWorkTransitionsOnActivity:v4];
    v10 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Sending cached home to work transition", buf, 2u);
    }

    v11 = 1;
    goto LABEL_11;
  }

  if (v8 != 1)
  {
LABEL_7:
    v12 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v9 = [(ATXPredictedTransitionsCache *)self->_cache getNextWorkToHomeTransitionsOnActivity:v4];
  v10 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Sending cached work to home transition", v19, 2u);
  }

  v11 = 0;
LABEL_11:

  v13 = objc_alloc(MEMORY[0x277D41C18]);
  v14 = objc_opt_new();
  [v6 coordinate];
  v12 = [v13 initWithUUID:v14 visits:0 coordinate:v11 type:?];

LABEL_12:
  v15 = [v9 sortedArrayUsingSelector:sel_compare_];
  v16 = [v15 firstObject];

  v17 = [[ATXPredictedTransition alloc] initWithDate:v16 loi:v12];

  return v17;
}

@end