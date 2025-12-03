@interface AVCaptureSystemPressureState
- (AVCaptureSystemPressureLevel)level;
- (AVCaptureSystemPressureState)init;
- (AVCaptureSystemPressureState)initWithFigLevel:(int)level factors:(unint64_t)factors recommendedFrameRateRangeForPortrait:(id)portrait recommendedFrameRateRangeForPhotoMode:(id)mode;
- (BOOL)isEqual:(id)equal;
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

- (AVCaptureSystemPressureState)initWithFigLevel:(int)level factors:(unint64_t)factors recommendedFrameRateRangeForPortrait:(id)portrait recommendedFrameRateRangeForPhotoMode:(id)mode
{
  v9 = *&level;
  v13.receiver = self;
  v13.super_class = AVCaptureSystemPressureState;
  v10 = [(AVCaptureSystemPressureState *)&v13 init];
  if (v10)
  {
    v11 = [[AVCaptureSystemPressureStateInternal alloc] initWithFigLevel:v9 factors:factors recommendedFrameRateRangeForPortrait:portrait recommendedFrameRateRangeForPhotoMode:mode];
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
    string = [MEMORY[0x1E696AD60] string];
    if (([(AVCaptureSystemPressureState *)self factors]& 1) != 0)
    {
      [string appendString:{@"System Temp, "}];
    }

    if (([(AVCaptureSystemPressureState *)self factors]& 4) != 0)
    {
      [string appendString:{@"Depth Module Temp, "}];
    }

    if (([(AVCaptureSystemPressureState *)self factors]& 2) != 0)
    {
      [string appendString:{@"Peak Power, "}];
    }

    if (([(AVCaptureSystemPressureState *)self factors]& 8) != 0)
    {
      [string appendString:{@"Camera Temp, "}];
    }

    v5 = [string substringToIndex:{objc_msgSend(string, "length") - 2}];
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      v5 = [objc_msgSend(equal "level")];
      if (v5)
      {
        factors = [equal factors];
        if (factors == [(AVCaptureSystemPressureState *)self factors])
        {
          recommendedFrameRateRangeForPortrait = [equal recommendedFrameRateRangeForPortrait];
          if (recommendedFrameRateRangeForPortrait == -[AVCaptureSystemPressureState recommendedFrameRateRangeForPortrait](self, "recommendedFrameRateRangeForPortrait") || (v5 = [objc_msgSend(equal "recommendedFrameRateRangeForPortrait")]) != 0)
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