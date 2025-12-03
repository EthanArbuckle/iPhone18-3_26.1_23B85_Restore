@interface OSDCameraCenter
+ (id)sharedCenter;
- (id)_backCamera:(id *)camera;
- (id)_frontCameraWithDevice:(id)device error:(id *)error;
- (id)_frontSuperWideCameraWithDevice:(id)device error:(id *)error;
- (id)_rearSuperWideCameraWithDevice:(id)device error:(id *)error;
- (id)_telephotoCameraWithDevice:(id)device error:(id *)error;
- (id)cameraForSource:(unint64_t)source error:(id *)error;
@end

@implementation OSDCameraCenter

+ (id)sharedCenter
{
  if (qword_100016100 != -1)
  {
    sub_100008500();
  }

  v3 = qword_1000160F8;

  return v3;
}

- (id)cameraForSource:(unint64_t)source error:(id *)error
{
  if (source <= 2)
  {
    if (source == 1)
    {
      v8 = [(OSDCameraCenter *)self _backCamera:error];
      goto LABEL_12;
    }

    if (source == 2)
    {
      device = [(OSDCameraCenter *)self device];
      v7 = [(OSDCameraCenter *)self _frontCameraWithDevice:device error:error];
      goto LABEL_11;
    }
  }

  else
  {
    switch(source)
    {
      case 3uLL:
        device = [(OSDCameraCenter *)self device];
        v7 = [(OSDCameraCenter *)self _telephotoCameraWithDevice:device error:error];
        goto LABEL_11;
      case 4uLL:
        device = [(OSDCameraCenter *)self device];
        v7 = [(OSDCameraCenter *)self _rearSuperWideCameraWithDevice:device error:error];
        goto LABEL_11;
      case 5uLL:
        device = [(OSDCameraCenter *)self device];
        v7 = [(OSDCameraCenter *)self _frontSuperWideCameraWithDevice:device error:error];
LABEL_11:
        v8 = v7;

        goto LABEL_12;
    }
  }

  [OSDError setError:error withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> No known camera for source %lu", self, source];
  v8 = 0;
LABEL_12:

  return v8;
}

- (id)_backCamera:(id *)camera
{
  backCamera = [(OSDCameraCenter *)self backCamera];

  if (!backCamera)
  {
    v6 = [OSDCamera alloc];
    device = [(OSDCameraCenter *)self device];
    v8 = [(OSDCamera *)v6 initWithCaptureDevice:device cameraSource:1 error:camera];
    [(OSDCameraCenter *)self setBackCamera:v8];
  }

  return [(OSDCameraCenter *)self backCamera];
}

- (id)_frontCameraWithDevice:(id)device error:(id *)error
{
  frontCamera = [(OSDCameraCenter *)self frontCamera];

  if (!frontCamera)
  {
    v7 = [OSDCamera alloc];
    device = [(OSDCameraCenter *)self device];
    v9 = [(OSDCamera *)v7 initWithCaptureDevice:device cameraSource:2 error:error];
    [(OSDCameraCenter *)self setFrontCamera:v9];
  }

  return [(OSDCameraCenter *)self frontCamera];
}

- (id)_telephotoCameraWithDevice:(id)device error:(id *)error
{
  telephotoCamera = [(OSDCameraCenter *)self telephotoCamera];

  if (!telephotoCamera)
  {
    v7 = [OSDCamera alloc];
    device = [(OSDCameraCenter *)self device];
    v9 = [(OSDCamera *)v7 initWithCaptureDevice:device cameraSource:3 error:error];
    [(OSDCameraCenter *)self setTelephotoCamera:v9];
  }

  return [(OSDCameraCenter *)self telephotoCamera];
}

- (id)_rearSuperWideCameraWithDevice:(id)device error:(id *)error
{
  telephotoCamera = [(OSDCameraCenter *)self telephotoCamera];

  if (!telephotoCamera)
  {
    v7 = [OSDCamera alloc];
    device = [(OSDCameraCenter *)self device];
    v9 = [(OSDCamera *)v7 initWithCaptureDevice:device cameraSource:4 error:error];
    [(OSDCameraCenter *)self setTelephotoCamera:v9];
  }

  return [(OSDCameraCenter *)self telephotoCamera];
}

- (id)_frontSuperWideCameraWithDevice:(id)device error:(id *)error
{
  telephotoCamera = [(OSDCameraCenter *)self telephotoCamera];

  if (!telephotoCamera)
  {
    v7 = [OSDCamera alloc];
    device = [(OSDCameraCenter *)self device];
    v9 = [(OSDCamera *)v7 initWithCaptureDevice:device cameraSource:5 error:error];
    [(OSDCameraCenter *)self setTelephotoCamera:v9];
  }

  return [(OSDCameraCenter *)self telephotoCamera];
}

@end