@interface TUISymbolImageBox
+ (int64_t)scaleFromString:(id)a3;
+ (int64_t)weightFromString:(id)a3 withDefault:(int64_t)a4;
+ (unint64_t)renderingModeFromString:(id)a3;
- (TUISymbolImageBox)init;
- (UIEdgeInsets)insets;
- (void)setHflipForRTL:(BOOL)a3;
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

- (void)setHflipForRTL:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v3;
}

+ (int64_t)scaleFromString:(id)a3
{
  v3 = a3;
  if (qword_2E6618 != -1)
  {
    sub_19BD24();
  }

  v4 = [qword_2E6610 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue];
  }

  else
  {
    v6 = &dword_0 + 2;
  }

  return v6;
}

+ (int64_t)weightFromString:(id)a3 withDefault:(int64_t)a4
{
  v5 = a3;
  if (qword_2E6628 != -1)
  {
    sub_19BD38();
  }

  v6 = [qword_2E6620 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    a4 = [v6 unsignedIntegerValue];
  }

  return a4;
}

+ (unint64_t)renderingModeFromString:(id)a3
{
  v3 = a3;
  if (qword_2E6638 != -1)
  {
    sub_19BD4C();
  }

  v4 = [qword_2E6630 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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