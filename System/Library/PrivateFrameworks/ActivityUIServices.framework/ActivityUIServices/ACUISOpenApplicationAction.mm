@interface ACUISOpenApplicationAction
- (ACUISOpenApplicationAction)init;
- (ACUISOpenApplicationAction)initWithNSUserActivity:(id)activity;
- (ACUISOpenApplicationAction)initWithURL:(id)l;
- (NSSet)launchActions;
@end

@implementation ACUISOpenApplicationAction

- (ACUISOpenApplicationAction)init
{
  v3.receiver = self;
  v3.super_class = ACUISOpenApplicationAction;
  return [(ACUISOpenApplicationAction *)&v3 initWithInfo:0 responder:0];
}

- (ACUISOpenApplicationAction)initWithURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v5 = objc_opt_new();
    [v5 setObject:lCopy forSetting:0];
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = self;
  v8.super_class = ACUISOpenApplicationAction;
  v6 = [(ACUISOpenApplicationAction *)&v8 initWithInfo:v5 responder:0];

  return v6;
}

- (ACUISOpenApplicationAction)initWithNSUserActivity:(id)activity
{
  v27[1] = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy_;
  v18[3] = __Block_byref_object_dispose_;
  v19 = 0;
  [activityCopy setNeedsSave:0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__ACUISOpenApplicationAction_initWithNSUserActivity___block_invoke;
  v16[3] = &unk_1E72627A0;
  v16[4] = &v20;
  v16[5] = &v17;
  [activityCopy _createUserActivityDataWithOptions:0 completionHandler:v16];
  if (*(v18[0] + 40))
  {
    v5 = _logger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ACUISOpenApplicationAction *)v18 initWithNSUserActivity:v5];
    }

    v15.receiver = self;
    v15.super_class = ACUISOpenApplicationAction;
    v6 = [(ACUISOpenApplicationAction *)&v15 initWithInfo:0 responder:0];
  }

  else
  {
    v7 = v21[5];
    v26 = &unk_1F01A3D48;
    v27[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v9 = [objc_alloc(MEMORY[0x1E69DC630]) initWithSettings:v8];
    if (v9)
    {
      v10 = objc_opt_new();
      [v10 setObject:v9 forSetting:1];
      v14.receiver = self;
      v14.super_class = ACUISOpenApplicationAction;
      v6 = [(ACUISOpenApplicationAction *)&v14 initWithInfo:v10 responder:0];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = ACUISOpenApplicationAction;
      v6 = [(ACUISOpenApplicationAction *)&v13 initWithInfo:0 responder:0];
    }
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

void __53__ACUISOpenApplicationAction_initWithNSUserActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (NSSet)launchActions
{
  info = [(ACUISOpenApplicationAction *)self info];
  v4 = [info objectForSetting:0];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCD00]) initWithURL:v4];
    v6 = [MEMORY[0x1E695DFA8] set];
    [v6 addObject:v5];
  }

  else
  {
    v6 = 0;
  }

  info2 = [(ACUISOpenApplicationAction *)self info];
  v8 = [info2 objectForSetting:1];

  if (v8)
  {
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DFA8] set];
    }

    [v6 addObject:v8];
  }

  v9 = [v6 copy];

  return v9;
}

- (void)initWithNSUserActivity:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_18E60F000, a2, OS_LOG_TYPE_ERROR, "Unable to serialize NSUserActivity: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end