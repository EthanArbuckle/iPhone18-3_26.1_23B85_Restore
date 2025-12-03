@interface HUDTheme
+ (id)darkModeTheme;
+ (id)lightModeTheme;
- (CGColor)currentHangTextColorForStatus:(int64_t)status;
- (CGColor)previousHangTextColorForStatus:(int64_t)status;
- (HUDTheme)initWithPreviousHangTextColor:(CGColor *)color currentHangTextColor:(CGColor *)textColor currentHangSevereTextColor:(CGColor *)severeTextColor previousHangSevereTextColor:(CGColor *)hangSevereTextColor currentHangCriticalTextColor:(CGColor *)criticalTextColor previousHangCriticalTextColor:(CGColor *)hangCriticalTextColor backgroundColor:(CGColor *)backgroundColor currentProcessExitTextColor:(CGColor *)self0 processExitReasonNamespaceTextColor:(CGColor *)self1;
- (void)dealloc;
@end

@implementation HUDTheme

- (HUDTheme)initWithPreviousHangTextColor:(CGColor *)color currentHangTextColor:(CGColor *)textColor currentHangSevereTextColor:(CGColor *)severeTextColor previousHangSevereTextColor:(CGColor *)hangSevereTextColor currentHangCriticalTextColor:(CGColor *)criticalTextColor previousHangCriticalTextColor:(CGColor *)hangCriticalTextColor backgroundColor:(CGColor *)backgroundColor currentProcessExitTextColor:(CGColor *)self0 processExitReasonNamespaceTextColor:(CGColor *)self1
{
  v19.receiver = self;
  v19.super_class = HUDTheme;
  v17 = [(HUDTheme *)&v19 init];
  if (v17)
  {
    v17->_previousHangTextColor = CGColorRetain(color);
    v17->_currentHangTextColor = CGColorRetain(textColor);
    v17->_currentHangSevereTextColor = CGColorRetain(severeTextColor);
    v17->_previousHangSevereTextColor = CGColorRetain(hangSevereTextColor);
    v17->_currentHangCriticalTextColor = CGColorRetain(criticalTextColor);
    v17->_previousHangCriticalTextColor = CGColorRetain(hangCriticalTextColor);
    v17->_backgroundColor = CGColorRetain(backgroundColor);
    v17->_currentProcessExitTextColor = CGColorRetain(exitTextColor);
    v17->_processExitReasonNamespaceTextColor = CGColorRetain(namespaceTextColor);
  }

  return v17;
}

- (void)dealloc
{
  CFRelease(self->_previousHangTextColor);
  CFRelease(self->_currentHangTextColor);
  CFRelease(self->_currentHangSevereTextColor);
  CFRelease(self->_previousHangSevereTextColor);
  CFRelease(self->_currentHangCriticalTextColor);
  CFRelease(self->_previousHangCriticalTextColor);
  CFRelease(self->_backgroundColor);
  CFRelease(self->_currentProcessExitTextColor);
  CFRelease(self->_processExitReasonNamespaceTextColor);
  v3.receiver = self;
  v3.super_class = HUDTheme;
  [(HUDTheme *)&v3 dealloc];
}

+ (id)lightModeTheme
{
  if (qword_10003E8F0 != -1)
  {
    sub_10001A6F4();
  }

  v3 = qword_10003E8F8;

  return v3;
}

+ (id)darkModeTheme
{
  if (qword_10003E900 != -1)
  {
    sub_10001A708();
  }

  v3 = qword_10003E908;

  return v3;
}

- (CGColor)currentHangTextColorForStatus:(int64_t)status
{
  if (status <= 3)
  {
    return *(&self->super.isa + qword_100020350[status]);
  }

  return v3;
}

- (CGColor)previousHangTextColorForStatus:(int64_t)status
{
  if (status <= 3)
  {
    return *(&self->super.isa + qword_100020370[status]);
  }

  return v3;
}

@end