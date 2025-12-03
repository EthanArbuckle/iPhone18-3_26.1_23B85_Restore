@interface ARConfiguration
- (BOOL)isPedestrianAR;
- (BOOL)isVIO;
- (BOOL)isVLF;
- (id)_underlyingConfiguration;
- (id)recordingConfigurationWithFileName:(id)name;
@end

@implementation ARConfiguration

- (id)recordingConfigurationWithFileName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = +[NSFileManager _maps_globalCachesURL];
    v6 = [v5 URLByAppendingPathComponent:@"ARTraces"];
    path = [v6 path];

    v8 = +[NSFileManager defaultManager];
    v9 = [v8 fileExistsAtPath:path];

    v10 = +[NSFileManager defaultManager];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 isWritableFileAtPath:path];

      if ((v12 & 1) == 0)
      {
        v13 = sub_1005C3618();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = path;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "ARKit recording directory (%@) is not writable. Please check its permissions on disk.", buf, 0xCu);
        }

        selfCopy3 = self;
        goto LABEL_21;
      }
    }

    else
    {
      v24 = 0;
      v16 = [v10 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v24];
      v17 = v24;

      v18 = sub_1005C3618();
      v19 = v18;
      if (!v16)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v26 = path;
          v27 = 2112;
          v28 = v17;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error creating ARKit recording directory (%@): %@", buf, 0x16u);
        }

        selfCopy3 = self;
        goto LABEL_20;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = path;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Successfully created ARKit recording directory (%@)", buf, 0xCu);
      }
    }

    v17 = [path stringByAppendingPathComponent:nameCopy];
    v20 = [ARRecordingConfiguration alloc];
    v21 = [NSURL fileURLWithPath:v17];
    selfCopy3 = [v20 initWithBaseConfiguration:self fileURL:v21];

    [(ARConfiguration *)selfCopy3 startRecording];
    v22 = sub_1005C3618();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Created recording configuration with path: %@", buf, 0xCu);
    }

LABEL_20:
LABEL_21:

    goto LABEL_22;
  }

  v15 = sub_1005C3618();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "fileName cannot be nil", buf, 2u);
  }

  selfCopy3 = self;
LABEL_22:

  return selfCopy3;
}

- (id)_underlyingConfiguration
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateConfiguration = [(ARConfiguration *)selfCopy templateConfiguration];

    selfCopy = templateConfiguration;
  }

  return selfCopy;
}

- (BOOL)isPedestrianAR
{
  _underlyingConfiguration = [(ARConfiguration *)self _underlyingConfiguration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isVLF
{
  _underlyingConfiguration = [(ARConfiguration *)self _underlyingConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _underlyingConfiguration;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [v4 visualLocalizationUpdatesRequested] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isVIO
{
  _underlyingConfiguration = [(ARConfiguration *)self _underlyingConfiguration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end