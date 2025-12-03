@interface UIWindowScene
- (int64_t)_maps_interfaceStyle;
- (int64_t)_maps_lightLevelPriority;
- (int64_t)carSceneType;
@end

@implementation UIWindowScene

- (int64_t)carSceneType
{
  delegate = [(UIWindowScene *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    delegate2 = [(UIWindowScene *)self delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return 0;
    }
  }

  delegate3 = [(UIWindowScene *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = delegate3;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    sceneType = [v8 sceneType];
  }

  else
  {
    v10 = sub_100014EFC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "carSceneType: failed to get scene delegate for scene: %@", &v12, 0xCu);
    }

    sceneType = 0;
  }

  return sceneType;
}

- (int64_t)_maps_lightLevelPriority
{
  carSceneType = [(UIWindowScene *)self carSceneType];
  if ((carSceneType - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_101212F48[carSceneType - 1];
  }
}

- (int64_t)_maps_interfaceStyle
{
  windows = [(UIWindowScene *)self windows];
  firstObject = [windows firstObject];
  traitCollection = [firstObject traitCollection];
  _car_userInterfaceStyle = [traitCollection _car_userInterfaceStyle];

  return _car_userInterfaceStyle;
}

@end