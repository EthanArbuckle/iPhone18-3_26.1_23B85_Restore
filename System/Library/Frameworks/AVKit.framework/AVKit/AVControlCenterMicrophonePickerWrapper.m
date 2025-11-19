@interface AVControlCenterMicrophonePickerWrapper
+ (CGSize)preferredSize;
- (AVControlCenterMicrophonePickerWrapper)init;
- (NSString)applicationBundleID;
- (id)didUpdateGainControl;
- (id)didUpdateInputOptionsCount;
- (id)makeViewControllerWithApplicationBundleID:(id)a3;
- (void)setApplicationBundleID:(id)a3;
- (void)setDidUpdateGainControl:(id)a3;
- (void)setDidUpdateInputOptionsCount:(id)a3;
- (void)setDiscovering:(BOOL)a3;
- (void)setOnScreen:(BOOL)a3;
@end

@implementation AVControlCenterMicrophonePickerWrapper

- (id)makeViewControllerWithApplicationBundleID:(id)a3
{
  v4 = sub_18B6C562C();
  v6 = v5;
  v7 = self;
  v8 = sub_18B52C8F8(v4, v6);

  return v8;
}

+ (CGSize)preferredSize
{
  if (qword_1EA9C3B98 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1EA9CE368;
  v3 = *&qword_1EA9CE370;
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSString)applicationBundleID
{
  if (*(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_applicationBundleID + 8))
  {
    sub_18B6C450C();
    v2 = sub_18B6C55FC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setApplicationBundleID:(id)a3
{
  if (a3)
  {
    v4 = sub_18B6C562C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_18B52CFD0(v4, v6);
}

- (id)didUpdateInputOptionsCount
{
  if (*(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateInputOptionsCount))
  {
    v2 = *(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateInputOptionsCount + 8);
    v5[4] = *(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateInputOptionsCount);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_18B52D1C0;
    v5[3] = &block_descriptor_43;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDidUpdateInputOptionsCount:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_18B52EAA0;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_18B52D2BC(v4, v5);
}

- (id)didUpdateGainControl
{
  if (*(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateGainControl))
  {
    v2 = *(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateGainControl + 8);
    v5[4] = *(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateGainControl);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_18B515858;
    v5[3] = &block_descriptor_5;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDidUpdateGainControl:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_18B52EA70;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_18B52D508(v4, v5);
}

- (void)setDiscovering:(BOOL)a3
{
  *(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_discovering) = a3;
  v3 = *(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_viewModel);
  if (v3)
  {
    *(v3 + 105) = a3;
    v4 = self;

    sub_18B508858();
  }
}

- (void)setOnScreen:(BOOL)a3
{
  *(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_onScreen) = a3;
  v3 = *(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_viewModel);
  if (v3)
  {
    *(v3 + 104) = a3;
    v4 = self;

    sub_18B508648();
  }
}

- (AVControlCenterMicrophonePickerWrapper)init
{
  *(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_viewModel) = 0;
  v2 = (self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_applicationBundleID);
  *v2 = 0;
  v2[1] = 0;
  v3 = (self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateInputOptionsCount);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateGainControl);
  *v4 = 0;
  v4[1] = 0;
  *(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_discovering) = 0;
  *(self + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_onScreen) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AVControlCenterMicrophonePickerWrapper();
  return [(AVControlCenterMicrophonePickerWrapper *)&v6 init];
}

@end