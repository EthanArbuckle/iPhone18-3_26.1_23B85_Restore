@interface COSApplicationLabelAccessoryView
- (COSApplicationLabelAccessoryView)initWithCoder:(id)coder;
- (COSApplicationLabelAccessoryView)initWithLabelAccessoryType:(int64_t)type;
@end

@implementation COSApplicationLabelAccessoryView

- (COSApplicationLabelAccessoryView)initWithLabelAccessoryType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = COSApplicationLabelAccessoryView;
  v4 = [(COSApplicationLabelAccessoryView *)&v10 initWithFrame:0.0, 0.0, 8.0, 8.0];
  v5 = v4;
  if (v4)
  {
    layer = [(COSApplicationLabelAccessoryView *)v4 layer];
    [layer setAllowsGroupBlending:0];

    if (type)
    {
      if (type == 1)
      {
        if (qword_1002BD370 != -1)
        {
          sub_100186B38();
        }

        v7 = [UIImageView alloc];
        v8 = [v7 initWithImage:qword_1002BD368];
        [v8 setFrame:{0.0, 0.0, 8.0, 8.0}];
      }

      else
      {
        v8 = 0;
      }

      [(COSApplicationLabelAccessoryView *)v5 addSubview:v8];
    }
  }

  return v5;
}

- (COSApplicationLabelAccessoryView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"This class does not support unarchiving from a nib" userInfo:0];
  objc_exception_throw(v4);
}

@end