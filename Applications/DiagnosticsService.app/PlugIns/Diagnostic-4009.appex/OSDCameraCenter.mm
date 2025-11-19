@interface OSDCameraCenter
+ (id)sharedCenter;
- (id)_backCamera:(id *)a3;
- (id)_frontCameraWithDevice:(id)a3 error:(id *)a4;
- (id)_frontSuperWideCameraWithDevice:(id)a3 error:(id *)a4;
- (id)_rearSuperWideCameraWithDevice:(id)a3 error:(id *)a4;
- (id)_telephotoCameraWithDevice:(id)a3 error:(id *)a4;
- (id)cameraForSource:(unint64_t)a3 error:(id *)a4;
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

- (id)cameraForSource:(unint64_t)a3 error:(id *)a4
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v8 = [(OSDCameraCenter *)self _backCamera:a4];
      goto LABEL_12;
    }

    if (a3 == 2)
    {
      v6 = [(OSDCameraCenter *)self device];
      v7 = [(OSDCameraCenter *)self _frontCameraWithDevice:v6 error:a4];
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 3uLL:
        v6 = [(OSDCameraCenter *)self device];
        v7 = [(OSDCameraCenter *)self _telephotoCameraWithDevice:v6 error:a4];
        goto LABEL_11;
      case 4uLL:
        v6 = [(OSDCameraCenter *)self device];
        v7 = [(OSDCameraCenter *)self _rearSuperWideCameraWithDevice:v6 error:a4];
        goto LABEL_11;
      case 5uLL:
        v6 = [(OSDCameraCenter *)self device];
        v7 = [(OSDCameraCenter *)self _frontSuperWideCameraWithDevice:v6 error:a4];
LABEL_11:
        v8 = v7;

        goto LABEL_12;
    }
  }

  [OSDError setError:a4 withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> No known camera for source %lu", self, a3];
  v8 = 0;
LABEL_12:

  return v8;
}

- (id)_backCamera:(id *)a3
{
  v5 = [(OSDCameraCenter *)self backCamera];

  if (!v5)
  {
    v6 = [OSDCamera alloc];
    v7 = [(OSDCameraCenter *)self device];
    v8 = [(OSDCamera *)v6 initWithCaptureDevice:v7 cameraSource:1 error:a3];
    [(OSDCameraCenter *)self setBackCamera:v8];
  }

  return [(OSDCameraCenter *)self backCamera];
}

- (id)_frontCameraWithDevice:(id)a3 error:(id *)a4
{
  v6 = [(OSDCameraCenter *)self frontCamera];

  if (!v6)
  {
    v7 = [OSDCamera alloc];
    v8 = [(OSDCameraCenter *)self device];
    v9 = [(OSDCamera *)v7 initWithCaptureDevice:v8 cameraSource:2 error:a4];
    [(OSDCameraCenter *)self setFrontCamera:v9];
  }

  return [(OSDCameraCenter *)self frontCamera];
}

- (id)_telephotoCameraWithDevice:(id)a3 error:(id *)a4
{
  v6 = [(OSDCameraCenter *)self telephotoCamera];

  if (!v6)
  {
    v7 = [OSDCamera alloc];
    v8 = [(OSDCameraCenter *)self device];
    v9 = [(OSDCamera *)v7 initWithCaptureDevice:v8 cameraSource:3 error:a4];
    [(OSDCameraCenter *)self setTelephotoCamera:v9];
  }

  return [(OSDCameraCenter *)self telephotoCamera];
}

- (id)_rearSuperWideCameraWithDevice:(id)a3 error:(id *)a4
{
  v6 = [(OSDCameraCenter *)self telephotoCamera];

  if (!v6)
  {
    v7 = [OSDCamera alloc];
    v8 = [(OSDCameraCenter *)self device];
    v9 = [(OSDCamera *)v7 initWithCaptureDevice:v8 cameraSource:4 error:a4];
    [(OSDCameraCenter *)self setTelephotoCamera:v9];
  }

  return [(OSDCameraCenter *)self telephotoCamera];
}

- (id)_frontSuperWideCameraWithDevice:(id)a3 error:(id *)a4
{
  v6 = [(OSDCameraCenter *)self telephotoCamera];

  if (!v6)
  {
    v7 = [OSDCamera alloc];
    v8 = [(OSDCameraCenter *)self device];
    v9 = [(OSDCamera *)v7 initWithCaptureDevice:v8 cameraSource:5 error:a4];
    [(OSDCameraCenter *)self setTelephotoCamera:v9];
  }

  return [(OSDCameraCenter *)self telephotoCamera];
}

@end