@interface AVInputPickerPresenterViewController
- (AVInputPickerPresenterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)dismissalBlock;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setDismissalBlock:(id)block;
- (void)setSourceView:(id)view;
- (void)transitionToVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
@end

@implementation AVInputPickerPresenterViewController

- (id)dismissalBlock
{
  if (*(self + OBJC_IVAR___AVInputPickerPresenterViewController_dismissalBlock))
  {
    v2 = *(self + OBJC_IVAR___AVInputPickerPresenterViewController_dismissalBlock + 8);
    v5[4] = *(self + OBJC_IVAR___AVInputPickerPresenterViewController_dismissalBlock);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_18B533A4C;
    v5[3] = &block_descriptor_35;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDismissalBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_18B533A68;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___AVInputPickerPresenterViewController_dismissalBlock);
  v8 = *(self + OBJC_IVAR___AVInputPickerPresenterViewController_dismissalBlock);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_18B4A31A4(v8);
}

- (void)setSourceView:(id)view
{
  v4 = *(self + OBJC_IVAR___AVInputPickerPresenterViewController_sourceView);
  *(self + OBJC_IVAR___AVInputPickerPresenterViewController_sourceView) = view;
  viewCopy = view;
}

- (void)transitionToVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_18B533970;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_18B5329CC(visible, animated, v8, v9);
  sub_18B4A31A4(v8);
}

- (void)loadView
{
  selfCopy = self;
  sub_18B533388();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v3 = *(self + OBJC_IVAR___AVInputPickerPresenterViewController_dismissalBlock);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_18B4A324C(v3);
    v3(v5);

    sub_18B4A31A4(v3);
  }
}

- (AVInputPickerPresenterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_18B6C562C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_18B53354C(v5, v7, bundle);
}

@end