@interface AVCaptureSystemPressureState
- (AVCaptureSystemPressureLevel)level;
- (AVCaptureSystemPressureState)init;
- (AVCaptureSystemPressureState)initWithFigLevel:(int)a3 factors:(unint64_t)a4 recommendedFrameRateRangeForPortrait:(id)a5 recommendedFrameRateRangeForPhotoMode:(id)a6;
- (BOOL)isEqual:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)spiDebugDescription;
- (void)dealloc;
@end

@implementation AVCaptureSystemPressureState

- (AVCaptureSystemPressureLevel)level
{
  v2 = [(AVCaptureSystemPressureStateInternal *)self->_internal figLevel]- 1;
  if (v2 > 3)
  {
    return @"AVCaptureSystemPressureLevelNominal";
  }

  else
  {
    return &off_1E786ED40[v2]->isa;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureSystemPressureState;
  [(AVCaptureSystemPressureState *)&v3 dealloc];
}

- (AVCaptureSystemPressureState)init
{
  v7.receiver = self;
  v7.super_class = AVCaptureSystemPressureState;
  v2 = [(AVCaptureSystemPressureState *)&v7 init];
  if (v2)
  {
    v3 = v2;
    if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken != -1)
    {
      [AVCaptureSystemPressureState init];
    }

    v4 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog;
    if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A917C000, v4, OS_LOG_TYPE_DEFAULT, "[AVCaptureSystemPressureState init] - Cannot directly instantiate an AVCaptureSystemPressureState object.", v6, 2u);
    }
  }

  return 0;
}

- (AVCaptureSystemPressureState)initWithFigLevel:(int)a3 factors:(unint64_t)a4 recommendedFrameRateRangeForPortrait:(id)a5 recommendedFrameRateRangeForPhotoMode:(id)a6
{
  v9 = *&a3;
  v13.receiver = self;
  v13.super_class = AVCaptureSystemPressureState;
  v10 = [(AVCaptureSystemPressureState *)&v13 init];
  if (v10)
  {
    v11 = [[AVCaptureSystemPressureStateInternal alloc] initWithFigLevel:v9 factors:a4 recommendedFrameRateRangeForPortrait:a5 recommendedFrameRateRangeForPhotoMode:a6];
    v10->_internal = v11;
    if (!v11)
    {

      return 0;
    }
  }

  return v10;
}

- (id)debugDescription
{
  if (([(NSString *)[(AVCaptureSystemPressureState *)self level] isEqual:@"AVCaptureSystemPressureLevelNominal"]& 1) != 0)
  {
    v3 = @"Nominal";
  }

  else if (([(NSString *)[(AVCaptureSystemPressureState *)self level] isEqual:@"AVCaptureSystemPressureLevelFair"]& 1) != 0)
  {
    v3 = @"Fair";
  }

  else if (([(NSString *)[(AVCaptureSystemPressureState *)self level] isEqual:@"AVCaptureSystemPressureLevelSerious"]& 1) != 0)
  {
    v3 = @"Serious";
  }

  else if (([(NSString *)[(AVCaptureSystemPressureState *)self level] isEqual:@"AVCaptureSystemPressureLevelCritical"]& 1) != 0)
  {
    v3 = @"Critical";
  }

  else if ([(NSString *)[(AVCaptureSystemPressureState *)self level] isEqual:@"AVCaptureSystemPressureLevelShutdown"])
  {
    v3 = @"Shutdown";
  }

  else
  {
    v3 = 0;
  }

  if ([(AVCaptureSystemPressureState *)self factors])
  {
    v4 = [MEMORY[0x1E696AD60] string];
    if (([(AVCaptureSystemPressureState *)self factors]& 1) != 0)
    {
      [v4 appendString:{@"System Temp, "}];
    }

    if (([(AVCaptureSystemPressureState *)self factors]& 4) != 0)
    {
      [v4 appendString:{@"Depth Module Temp, "}];
    }

    if (([(AVCaptureSystemPressureState *)self factors]& 2) != 0)
    {
      [v4 appendString:{@"Peak Power, "}];
    }

    if (([(AVCaptureSystemPressureState *)self factors]& 8) != 0)
    {
      [v4 appendString:{@"Camera Temp, "}];
    }

    v5 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 2}];
  }

  else
  {
    v5 = @"None";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Level:%@ Factors:%@", v3, v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureSystemPressureState debugDescription](self, "debugDescription")];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [a3 isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      v5 = [objc_msgSend(a3 "level")];
      if (v5)
      {
        v6 = [a3 factors];
        if (v6 == [(AVCaptureSystemPressureState *)self factors])
        {
          v7 = [a3 recommendedFrameRateRangeForPortrait];
          if (v7 == -[AVCaptureSystemPressureState recommendedFrameRateRangeForPortrait](self, "recommendedFrameRateRangeForPortrait") || (v5 = [objc_msgSend(a3 "recommendedFrameRateRangeForPortrait")]) != 0)
          {
            LOBYTE(v5) = 1;
          }
        }

        else
        {
          LOBYTE(v5) = 0;
        }
      }
    }
  }

  return v5;
}

- (id)spiDebugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AVCaptureSystemPressureState *)self debugDescription];
  [-[AVCaptureSystemPressureState recommendedFrameRateRangeForPortrait](self "recommendedFrameRateRangeForPortrait")];
  v6 = v5;
  [-[AVCaptureSystemPressureState recommendedFrameRateRangeForPortrait](self "recommendedFrameRateRangeForPortrait")];
  v8 = v7;
  [-[AVCaptureSystemPressureState recommendedFrameRateRangeForPhotoMode](self "recommendedFrameRateRangeForPhotoMode")];
  v10 = v9;
  [-[AVCaptureSystemPressureState recommendedFrameRateRangeForPhotoMode](self "recommendedFrameRateRangeForPhotoMode")];
  return [v3 stringWithFormat:@"%@ Recommended Frame Rate for Portrait:%.0f-%.0f, Recommended Frame Rate for Photo Mode:%.0f-%.0f", v4, v6, v8, v10, v11];
}

@end