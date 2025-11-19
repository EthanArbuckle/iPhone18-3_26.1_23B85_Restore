@interface AVInputPickerPresenterViewController
- (AVInputPickerPresenterViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)dismissalBlock;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setDismissalBlock:(id)a3;
- (void)setSourceView:(id)a3;
- (void)transitionToVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
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

- (void)setDismissalBlock:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_18B4A31A4(v8);
}

- (void)setSourceView:(id)a3
{
  v4 = *(self + OBJC_IVAR___AVInputPickerPresenterViewController_sourceView);
  *(self + OBJC_IVAR___AVInputPickerPresenterViewController_sourceView) = a3;
  v3 = a3;
}

- (void)transitionToVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = self;
  sub_18B5329CC(a3, a4, v8, v9);
  sub_18B4A31A4(v8);
}

- (void)loadView
{
  v2 = self;
  sub_18B533388();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = *(self + OBJC_IVAR___AVInputPickerPresenterViewController_dismissalBlock);
  if (v3)
  {
    v4 = self;
    v5 = sub_18B4A324C(v3);
    v3(v5);

    sub_18B4A31A4(v3);
  }
}

- (AVInputPickerPresenterViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_18B6C562C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_18B53354C(v5, v7, a4);
}

@end