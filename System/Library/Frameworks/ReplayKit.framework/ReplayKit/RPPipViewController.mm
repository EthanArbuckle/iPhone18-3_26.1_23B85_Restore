@interface RPPipViewController
- (RPPipViewController)initWithOrientation:(int64_t)a3 position:(int64_t)a4;
- (id)cameraWithPosition:(int64_t)a3;
- (int64_t)_captureVideoOrientationForUIDeviceOrientation:(int64_t)a3;
- (void)_deviceOrientationDidChange;
- (void)_updateViewGeometry;
- (void)configurePipSessionWithCameraPosition:(int64_t)a3;
- (void)dealloc;
- (void)loadView;
- (void)setCameraPosition:(int64_t)a3;
- (void)setUpPipSession;
- (void)startPipSession;
- (void)stopPipSession;
@end

@implementation RPPipViewController

- (RPPipViewController)initWithOrientation:(int64_t)a3 position:(int64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = RPPipViewController;
  v6 = [(RPPipViewController *)&v9 init];
  if (v6)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v11 = "[RPPipViewController initWithOrientation:position:]";
      v12 = 1024;
      v13 = 87;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    [(RPPipViewController *)v6 setInitialOrientation:a3];
    [(RPPipViewController *)v6 setPreviousOrientation:a3];
    v6->_cameraPosition = a4;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v6 = "[RPPipViewController dealloc]";
    v7 = 1024;
    v8 = 98;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  [(RPPipViewController *)self removeSystemPrefferedCameraObserver];
  v4.receiver = self;
  v4.super_class = RPPipViewController;
  [(RPPipViewController *)&v4 dealloc];
  v3 = *MEMORY[0x277D85DE8];
}

- (id)cameraWithPosition:(int64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CE5AC8] devicesWithMediaType:*MEMORY[0x277CE5EA8]];
  if (v4)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v23 = "[RPPipViewController cameraWithPosition:]";
      v24 = 1024;
      v25 = 118;
      v26 = 1024;
      v27 = [v4 count];
      v5 = MEMORY[0x277D86220];
      v6 = " [INFO] %{public}s:%d looking for camera in %d capture devices";
      v7 = 24;
LABEL_8:
      _os_log_impl(&dword_23A863000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, v7);
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v23 = "[RPPipViewController cameraWithPosition:]";
    v24 = 1024;
    v25 = 120;
    v5 = MEMORY[0x277D86220];
    v6 = " [INFO] %{public}s:%d no capture devices found";
    v7 = 18;
    goto LABEL_8;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 position] == a3)
        {
          if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v23 = "[RPPipViewController cameraWithPosition:]";
            v24 = 1024;
            v25 = 131;
            v26 = 1024;
            v27 = a3;
            _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d camera found with position %d", buf, 0x18u);
          }

          v14 = v13;

          goto LABEL_25;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPPipViewController cameraWithPosition:];
  }

  v14 = 0;
LABEL_25:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)configurePipSessionWithCameraPosition:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPPipViewController configurePipSessionWithCameraPosition:]";
    v14 = 1024;
    v15 = 141;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  [(AVCaptureSession *)self->_pipSession beginConfiguration];
  if (self->_videoInput)
  {
    [(AVCaptureSession *)self->_pipSession removeInput:?];
  }

  v5 = [(RPPipViewController *)self cameraWithPosition:a3];
  v11 = 0;
  v6 = [objc_alloc(MEMORY[0x277CE5AD8]) initWithDevice:v5 error:&v11];
  v7 = v11;
  videoInput = self->_videoInput;
  self->_videoInput = v6;

  if (self->_videoInput)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    [(AVCaptureSession *)self->_pipSession addInput:?];
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPPipViewController configurePipSessionWithCameraPosition:v7];
  }

  [(AVCaptureSession *)self->_pipSession commitConfiguration];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCameraPosition:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPPipViewController setCameraPosition:]";
    v8 = 1024;
    v9 = 167;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  if (self->_pipSession && self->_cameraPosition != a3)
  {
    [(RPPipViewController *)self configurePipSessionWithCameraPosition:a3];
  }

  self->_cameraPosition = a3;
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setUpPipSession
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startPipSession
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPPipViewController startPipSession]";
    v7 = 1024;
    v8 = 217;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  v3 = [(RPPipViewController *)self pipSession];
  [v3 startRunning];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)stopPipSession
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPPipViewController stopPipSession]";
    v7 = 1024;
    v8 = 223;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  [(RPPipViewController *)self removeSystemPrefferedCameraObserver];
  v3 = [(RPPipViewController *)self pipSession];
  [v3 stopRunning];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  v12 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPPipViewController loadView]";
    v10 = 1024;
    v11 = 230;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v8, 0x12u);
  }

  v3 = [RPPipView alloc];
  v4 = [(RPPipView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(RPPipViewController *)self setView:v4];

  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [(RPPipViewController *)self view];
  [v6 setBackgroundColor:v5];

  [(RPPipViewController *)self _updateViewGeometry];
  [(RPPipViewController *)self setUpPipSession];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateViewGeometry
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [MEMORY[0x277D75418] currentDevice];
  if ([v12 orientation])
  {
    v13 = [MEMORY[0x277D75418] currentDevice];
    initialOrientation = [v13 orientation];
  }

  else
  {
    initialOrientation = self->_initialOrientation;
  }

  v15 = initialOrientation - 5;
  v16 = initialOrientation - 1;
  if (v9 >= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v9;
  }

  if (v9 >= v11)
  {
    v18 = v9;
  }

  else
  {
    v18 = v11;
  }

  if (v16 > 1)
  {
    v18 = v11;
    v17 = v9;
  }

  if (v9 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = v9;
  }

  if (v9 <= v11)
  {
    v20 = v9;
  }

  else
  {
    v20 = v11;
  }

  if (v15 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  if (v15 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v22 = v19;
  }

  else
  {
    v22 = v17;
  }

  v44 = v22 * 0.2;
  v23 = v21 * (v22 * 0.2 / v22);
  v24 = [(RPPipViewController *)self view];
  [v24 frame];
  if (v25 == 0.0)
  {
    v26 = [(RPPipViewController *)self view];
    [v26 frame];
    v28 = v27;

    v29 = v28 == 0.0;
    v23 = v21 * (v22 * 0.2 / v22);
    if (v29)
    {
      v30 = [(RPPipViewController *)self view];
      [v30 setFrame:{v5 + v22 * 0.03, v7 + v21 * 0.03, v44, v21 * (v22 * 0.2 / v22)}];
      goto LABEL_40;
    }
  }

  else
  {
  }

  if (([(RPPipViewController *)self previousOrientation]- 3) > 1 || v16 >= 2)
  {
    v31 = [(RPPipViewController *)self previousOrientation];
    if (v15 < 0xFFFFFFFFFFFFFFFELL || (v31 - 3) < 0xFFFFFFFFFFFFFFFELL)
    {
      if ([(RPPipViewController *)self previousOrientation]!= 5 && [(RPPipViewController *)self previousOrientation]!= 6)
      {
        goto LABEL_41;
      }

      [(RPPipViewController *)self previousOrientationWidth];
      v33 = v32;
      [(RPPipViewController *)self previousOrientationHeight];
      if (v15 < 0xFFFFFFFFFFFFFFFELL || v33 >= v34)
      {
        [(RPPipViewController *)self previousOrientationWidth];
        v36 = v35;
        [(RPPipViewController *)self previousOrientationHeight];
        if (v36 <= v37 || v16 > 1)
        {
          goto LABEL_41;
        }
      }
    }
  }

  v30 = [(RPPipViewController *)self view];
  [v30 frame];
  v39 = v38;
  v40 = [(RPPipViewController *)self view];
  [v40 frame];
  v42 = v41;
  v43 = [(RPPipViewController *)self view];
  [v43 setFrame:{v39, v42, v44, v23}];

LABEL_40:
LABEL_41:
  [(RPPipViewController *)self setPreviousOrientation:initialOrientation];
  [(RPPipViewController *)self setPreviousOrientationWidth:v9];

  [(RPPipViewController *)self setPreviousOrientationHeight:v11];
}

- (void)_deviceOrientationDidChange
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RPPipViewController__deviceOrientationDidChange__block_invoke;
  v7[3] = &unk_278B61B70;
  v7[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.3];
  v3 = [(RPPipViewController *)self _pipView];
  v4 = [v3 previewLayer];
  v5 = [v4 connection];
  v6 = [MEMORY[0x277D75418] currentDevice];
  [v5 setVideoOrientation:{-[RPPipViewController _captureVideoOrientationForUIDeviceOrientation:](self, "_captureVideoOrientationForUIDeviceOrientation:", objc_msgSend(v6, "orientation"))}];
}

- (int64_t)_captureVideoOrientationForUIDeviceOrientation:(int64_t)a3
{
  if ((a3 - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (void)cameraWithPosition:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configurePipSessionWithCameraPosition:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

@end