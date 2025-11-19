@interface EKEventAttendeePickerBGView
- (void)setBounds:(CGRect)a3;
@end

@implementation EKEventAttendeePickerBGView

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(EKEventAttendeePickerBGView *)self bounds];
  v9 = v8;
  v11 = v10;
  v16.receiver = self;
  v16.super_class = EKEventAttendeePickerBGView;
  [(EKEventAttendeePickerBGView *)&v16 setBounds:x, y, width, height];
  [(EKEventAttendeePickerBGView *)self bounds];
  if (v9 != v13 || v11 != v12)
  {
    boundsChangeCallback = self->_boundsChangeCallback;
    if (boundsChangeCallback)
    {
      boundsChangeCallback[2]();
    }
  }
}

@end