@interface MPSVirtualImage
- (MPSVirtualImage)initWithDevice:(id)a3 imageDescriptor:(id)a4;
@end

@implementation MPSVirtualImage

- (MPSVirtualImage)initWithDevice:(id)a3 imageDescriptor:(id)a4
{
  if (!a4)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!*(a4 + 1))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!*(a4 + 2))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!*(a4 + 3))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!*(a4 + 4))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!*(a4 + 5))
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_24:
      v28 = objc_opt_class();
      NSStringFromClass(v28);
      MTLReportFailure();
    }

LABEL_25:

    return 0;
  }

  MPSDevice = MPSDevice::GetMPSDevice(a3);
  if (!MPSDevice)
  {
    goto LABEL_25;
  }

  v12 = MPSDevice;
  v13 = objc_msgSend_newTextureDescriptor(a4, v8, v9, v10, v11);
  if (!v13)
  {
    goto LABEL_25;
  }

  v15 = v13;
  v20 = objc_msgSend_initWithDescriptor_featureChannels_featureChannelsLayout_featureChannelFormat_onDevice_(self, v14, v13, *(a4 + 3), *(a4 + 9), *(a4 + 10), a3);
  v21 = (*(*(v20 + 8) + 1477) & 4) == 0 || objc_msgSend_textureType(v15, v16, v17, v18, v19) != 2;
  v22 = *(a4 + 10);
  *(v20 + 152) = 4;
  *(v20 + 144) = v12;
  *(v20 + 136) = v15;
  *(v20 + 153) = v21;
  *(v20 + 104) = xmmword_22E37B630;
  v27 = objc_msgSend_pixelFormat(v15, v23, v24, v25, v26);
  *(v20 + 128) = MPSDevice::GetPixelInfo(v12, v27, v22);

  return v20;
}

@end