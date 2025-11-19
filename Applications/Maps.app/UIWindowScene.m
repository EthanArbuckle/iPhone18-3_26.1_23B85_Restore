@interface UIWindowScene
- (int64_t)_maps_interfaceStyle;
- (int64_t)_maps_lightLevelPriority;
- (int64_t)carSceneType;
@end

@implementation UIWindowScene

- (int64_t)carSceneType
{
  v3 = [(UIWindowScene *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v4 = [(UIWindowScene *)self delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return 0;
    }
  }

  v6 = [(UIWindowScene *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 sceneType];
  }

  else
  {
    v10 = sub_100014EFC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "carSceneType: failed to get scene delegate for scene: %@", &v12, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (int64_t)_maps_lightLevelPriority
{
  v2 = [(UIWindowScene *)self carSceneType];
  if ((v2 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_101212F48[v2 - 1];
  }
}

- (int64_t)_maps_interfaceStyle
{
  v2 = [(UIWindowScene *)self windows];
  v3 = [v2 firstObject];
  v4 = [v3 traitCollection];
  v5 = [v4 _car_userInterfaceStyle];

  return v5;
}

@end