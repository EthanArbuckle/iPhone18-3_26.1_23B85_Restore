@interface ADJasperPearlInFieldCalibrationPearlInput
- (__n128)setPose:(__n128)pose;
- (__n128)setPrevPose:(__n128)pose;
- (id)getPearlDepthAttachments;
@end

@implementation ADJasperPearlInFieldCalibrationPearlInput

- (__n128)setPrevPose:(__n128)pose
{
  result[8] = a2;
  result[9] = pose;
  result[10] = a4;
  result[11] = a5;
  return result;
}

- (__n128)setPose:(__n128)pose
{
  result[4] = a2;
  result[5] = pose;
  result[6] = a4;
  result[7] = a5;
  return result;
}

- (id)getPearlDepthAttachments
{
  Attachment = [(ADJasperPearlInFieldCalibrationPearlInput *)self depth];
  if (Attachment)
  {
    Attachment = CVBufferGetAttachment(Attachment, @"AttachmentBuffers", 0);
    if (Attachment)
    {
      v3 = Attachment;
      CFRetain(Attachment);
      Attachment = v3;
    }
  }

  return Attachment;
}

@end