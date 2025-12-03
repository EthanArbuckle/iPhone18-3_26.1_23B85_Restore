@interface TUISymbolImageBox
+ (int64_t)scaleFromString:(id)string;
+ (int64_t)weightFromString:(id)string withDefault:(int64_t)default;
+ (unint64_t)renderingModeFromString:(id)string;
- (TUISymbolImageBox)init;
- (UIEdgeInsets)insets;
- (void)setHflipForRTL:(BOOL)l;
@end

@implementation TUISymbolImageBox

- (TUISymbolImageBox)init
{
  v3.receiver = self;
  v3.super_class = TUISymbolImageBox;
  result = [(TUIBox *)&v3 init];
  if (result)
  {
    *&result->_flags = 0;
  }

  return result;
}

- (void)setHflipForRTL:(BOOL)l
{
  if (l)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v3;
}

+ (int64_t)scaleFromString:(id)string
{
  stringCopy = string;
  if (qword_2E6618 != -1)
  {
    sub_19BD24();
  }

  v4 = [qword_2E6610 objectForKeyedSubscript:stringCopy];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = &dword_0 + 2;
  }

  return unsignedIntegerValue;
}

+ (int64_t)weightFromString:(id)string withDefault:(int64_t)default
{
  stringCopy = string;
  if (qword_2E6628 != -1)
  {
    sub_19BD38();
  }

  v6 = [qword_2E6620 objectForKeyedSubscript:stringCopy];
  v7 = v6;
  if (v6)
  {
    default = [v6 unsignedIntegerValue];
  }

  return default;
}

+ (unint64_t)renderingModeFromString:(id)string
{
  stringCopy = string;
  if (qword_2E6638 != -1)
  {
    sub_19BD4C();
  }

  v4 = [qword_2E6630 objectForKeyedSubscript:stringCopy];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end